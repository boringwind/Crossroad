//
//  AppDelegate.swift
//  Demo-mac
//
//  Created by Wind on 2022/4/2.
//

import Cocoa
import Crossroad

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    private lazy var version: ViewController = {
       ViewController()
    }()
    
    private lazy var router: BasicRouter = {
        BasicRouter.init(accepting: .universalLink(URL.init(string: "dida365.com")!))
    }()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

