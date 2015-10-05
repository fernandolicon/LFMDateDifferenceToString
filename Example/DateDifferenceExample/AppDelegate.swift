//
//  AppDelegate.swift
//  DateDifferenceExample
//
//  Created by Luis Fernando Mata on 3/10/15.
//  Copyright © 2015 Luis Fernando Mata. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    var mainViewController: MainViewController!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        mainViewController = MainViewController(nibName: "MainViewController", bundle: nil)
        
        window.contentView?.addSubview(mainViewController.view)
        mainViewController.view.frame = (window.contentView! as NSView).bounds
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

