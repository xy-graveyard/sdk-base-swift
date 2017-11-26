//
//  ViewController.swift
//  XYCoreSample
//
//  Created by Arie Trouw on 5/16/17.
//  Copyright © 2017 XY - The Findables Company. All rights reserved.
//

import UIKit
import XYCore

class MainViewController: UIViewController {

    @IBOutlet weak var txtFirebaseStatus: UITextField!
    @IBOutlet weak var txtFabricStatus: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFabricStatus.text = "Hello"
        txtFirebaseStatus.text = "There"
    }

    @IBAction func testLoggingPressed(_ sender: Any) {
        XYBase.enableExtremeLogging(true)
        XYBase.logInfo(self, module: #file, function: #function, message: "Testing Info Logging")
        XYBase.logExtreme(self, module: #file, function: #function, message: "Testing Extreme Logging")
        XYBase.logError(self, module: #file, function: #function, message: "Testing Error Logging", halt:false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

