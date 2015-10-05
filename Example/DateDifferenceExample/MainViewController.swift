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
    @IBOutlet weak var betweenDatesCheckBox: NSButton!
    var isBetweenDatesChecked = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        initialDatePicker.dateValue = NSDate()
        endDatePicker.dateValue = NSDate()
    }
    
    @IBAction func betweenDatesChanged(sender: AnyObject) {
        endDatePicker.enabled = betweenDatesCheckBox.state == 0 ? false : true
        isBetweenDatesChecked = betweenDatesCheckBox.state == 0 ? false : true
    }
    
    @IBAction func calculateDifference(sender: AnyObject) {
        var differenceString = ""
        if isBetweenDatesChecked{
            differenceString = LFMDateDifferenceToString.getStringOfDifferenceFromToday(initialDatePicker.dateValue)
        }else{
            differenceString = LFMDateDifferenceToString.getStringOfDifferenceBetweenDates(initialDatePicker.dateValue, endDate: endDatePicker.dateValue)
        }
        resultLabel.stringValue = differenceString
    }
}
