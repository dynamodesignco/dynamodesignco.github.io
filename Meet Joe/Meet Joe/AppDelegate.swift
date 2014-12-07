//
//  AppDelegate.swift
//  Meet Joe
//
//  Created by Joe Frizzell on 12/6/14.
//  Copyright (c) 2014 Dynamo Designs. All rights reserved.
//

import Cocoa
import WebKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var theWebView: WebView!
    
    let url = "http://joefrizzell.com"

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        self.theWebView.mainFrame.loadRequest(request)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

