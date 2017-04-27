//
//  XYObject.swift
//  Xy
//
//  Created by Arie Trouw on 11/6/16.
//  Copyright © 2016 XY - The Findables Company. All rights reserved.
//

import Foundation

@objc open class XYBase : NSObject {
    
    open class func dump() -> Dictionary<String, Any> {
        var dump = Dictionary<String, Any>()
        dump["infoLoggingEnabled"] = infoLoggingEnabled
        dump["errorLoggingEnabled"] = errorLoggingEnabled
        dump["haltOnError"] = haltOnError
        dump["reportStatus"] = reportStatus
        return dump
    }
    
    open func dump() -> Dictionary<String, Any> {
        var dump = Dictionary<String, Any>()
        dump["Static"] = XYBase.dump()
        return dump
    }
    #if DEBUG
    internal static var extremeLoggingEnabled = false
    internal static var infoLoggingEnabled = true
    internal static var errorLoggingEnabled = true
    internal static var haltOnError = false
    #else
    internal static var extremeLoggingEnabled = false
    internal static var infoLoggingEnabled = false
    internal static var errorLoggingEnabled = false
    internal static var haltOnError = false
    #endif
    
    internal static let dateFormatter = intializeDateFormatter()
    internal static var logExtremeAttemptCount = 0
    internal static var logExtremeExecuteCount = 0
    internal static var logInfoAttemptCount = 0
    internal static var logInfoExecuteCount = 0
    internal static var logErrorAttemptCount = 0
    internal static var logErrorExecuteCount = 0
    internal static var reportStatus = Array<String>()
    
    internal static func intializeDateFormatter() -> DateFormatter {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd hh:mm:ss.SSSS"
        return df
    }
    
    internal static func now() -> String {
        return dateFormatter.string(from: Date())
    }
    
    open func verifyMainThreadAsync(closure : @escaping () -> Void)
    {
        if (Thread.isMainThread)
        {
            closure();
        }
        else
        {
            logInfo(module: #file, function: #function, message: "verifyMainThreadAsync: Dispatching to Main Thread!");
            DispatchQueue.main.async(execute:closure);
        }
    }
    
    open static func verifyMainThreadAsync(closure : @escaping () -> Void)
    {
        if (Thread.isMainThread)
        {
            closure();
        }
        else
        {
            logInfo(module: #file, function: #function, message: "verifyMainThreadAsync: Dispatching to Main Thread!");
            DispatchQueue.main.async(execute:closure);
        }
    }
    
    open static func logInfo(module: String, function: String, message: String){
        logInfoAttemptCount+=1
        if (infoLoggingEnabled) {
            logInfoExecuteCount+=1
            print("\(now()) XY-Info:\((module as NSString).lastPathComponent):\(function):\(message)")
        }
    }
    
    open func logInfo(module: String, function: String, message: String){
        XYBase.logInfo(module: module, function: function, message: message)
    }
    
    open static func logExtreme(module: String, function: String, message: String){
        logExtremeAttemptCount+=1
        if (extremeLoggingEnabled) {
            logExtremeExecuteCount+=1
            print("\(now()) XY-Extreme:\((module as NSString).lastPathComponent):\(function):\(message)")
        }
    }
    
    open func logExtreme(module: String, function: String, message: String){
        XYBase.logExtreme(module: module, function: function, message: message)
    }
    
    open static func logError(module: String, function: String, message: String, data: Any?) {
        logErrorAttemptCount+=1
        if (errorLoggingEnabled) {
            logErrorExecuteCount+=1
            print("\(now()) XY-Error:\((module as NSString).lastPathComponent):\(function):\(message):\(String(describing: data))")
            //logCustomEvent(withName: "Error", customAttributes:["Module": module, "Function":function, "Message":message, "Data":data ?? "None"])
        }
        if (haltOnError) {
            fatalError()
        }
    }
    
    open static func logError(module: String, function: String, message: String) {
        logError(module: module, function: function, message: message, data: nil)
    }
    
    open func logError(module: String, function: String, message: String, data: Any?) {
        XYBase.logError(module: module, function: function, message: message, data: data)
    }
    
    open func logError(module: String, function: String, message: String) {
        XYBase.logError(module: module, function: function, message: message)
    }
    
    open class func reportStatus(_ status:String) {
        reportStatus.append(status)
        print("XY-Status:\(status)")
    }
    
    open func reportStatus(_ status: String) {
        XYBase.reportStatus(status)
    }
}
