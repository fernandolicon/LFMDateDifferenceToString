//
//  MainViewController.swift
//  DateDifferenceExample
//
//  Created by Luis Fernando Mata on 4/10/15.
//  Copyright © 2015 Luis Fernando Mata. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
    @IBOutlet weak var initialDatePicker: NSDatePicker!
    @IBOutlet weak var endDatePicker: NSDatePicker!
    @IBOutlet weak var resultLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        initialDatePicker.dateValue = NSDate()
        endDatePicker.dateValue = NSDate()
    }
    
    @IBAction func calculateDifference(sender: AnyObject) {
        resultLabel.stringValue = LFMDateDifferenceToString.getStringOfDifferenceFromToday(initialDatePicker.dateValue)
    }
}
