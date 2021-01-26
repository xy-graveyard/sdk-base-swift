//
//  XYObject.swift
//  Xy
//
//  Created by Arie Trouw on 11/6/16.
//  Copyright © 2016 XY - The Findables Company. All rights reserved.
//

import Foundation

extension Date {
   func getFormattedDate(format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}

open class XYBase: NSObject {
  
  open class func dump() -> [String: Any] {
    var dump = [String: Any]()
    dump["infoLoggingEnabled"] = infoLoggingEnabled
    dump["errorLoggingEnabled"] = errorLoggingEnabled
    dump["haltOnError"] = haltOnError
    dump["reportStatus"] = reportStatus
    return dump
  }
  
  open func dump() -> [String: Any] {
    var dump = [String: Any]()
    dump["Static"] = XYBase.dump()
    return dump
  }
  #if DEBUG
  internal static var extremeLoggingEnabled = false
  internal static var infoLoggingEnabled = true
  internal static var errorLoggingEnabled = true
  #else
  internal static var extremeLoggingEnabled = false
  internal static var infoLoggingEnabled = false
  internal static var errorLoggingEnabled = false
  #endif
  
  internal static var haltOnError = false
  
  internal static var logExtremeAttemptCount = 0
  internal static var logExtremeExecuteCount = 0
  internal static var logInfoAttemptCount = 0
  internal static var logInfoExecuteCount = 0
  internal static var logErrorAttemptCount = 0
  internal static var logErrorExecuteCount = 0
  internal static var reportStatus = [String]()
  
  internal static func now() -> String {
    return Date().getFormattedDate()
  }
  
  open class func enableExtremeLogging(_ enable: Bool) {
    extremeLoggingEnabled = enable
  }
  
  open func verifyMainThreadAsync(closure : @escaping () -> Void) {
    if Thread.isMainThread {
      closure()
    } else {
      // logInfo(module: #file, function: #function, message: "verifyMainThreadAsync: Dispatching to Main Thread!");
      DispatchQueue.main.async(execute: closure)
    }
  }
  
  public static func verifyMainThreadAsync(closure : @escaping () -> Void) {
    if Thread.isMainThread {
      closure()
    } else {
      // logInfo(nil, module: #file, function: #function, message: "verifyMainThreadAsync: Dispatching to Main Thread!");
      DispatchQueue.main.async(execute: closure)
    }
  }
  
  public static func log(_ message: String, _ file: String = #file, _ function: String = #function) {
    print("\(now()) \(message):\((file as NSString).lastPathComponent):\(function)")
  }
  
  open class func logInfo(_ message: String, _ file: String = #file, _ function: String = #function) {
    logInfoAttemptCount+=1
    if infoLoggingEnabled {
      logInfoExecuteCount+=1
      log("XY-Info: \(message)", file, function)
    }
  }
  
  open func logInfo(_ message: String, _ file: String = #file, _ function: String = #function) {
    XYBase.logInfo(message, file, function)
  }
  
  open class func logExtreme(_ message: String, _ file: String = #file, _ function: String = #function) {
    logExtremeAttemptCount+=1
    if extremeLoggingEnabled {
      logExtremeExecuteCount+=1
      log("XY-Extreme: \(message)", file, function)
    }
  }
  
  open func logExtreme(_ message: String, _ file: String = #file, _ function: String = #function) {
    XYBase.logExtreme(message, file, function)
  }
  
  open class func logError(_ message: String, _ halt: Bool? = nil, _ file: String = #file, _ function: String = #function) {
    logErrorAttemptCount+=1
    if errorLoggingEnabled {
      logErrorExecuteCount+=1
    }
    log("XY-Error: \(message)", file, function)
    if halt != nil {
      if halt! {
        fatalError()
      }
    } else if haltOnError {
      fatalError()
    }
  }
  
  open func logError(_ message: String, _ halt: Bool? = nil, _ file: String = #file, _ function: String = #function) {
    XYBase.logError(message, halt, file, function)
  }
  
  open class func reportStatus(_ status: String) {
    reportStatus.append(status)
    print("XY-Status:\(status)")
  }
  
  open func reportStatus(_ status: String) {
    XYBase.reportStatus(status)
  }
}
