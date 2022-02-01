//
//  AppDelegate.swift
//  blee
//
//  Created by J Tan on 1/23/22.
//

import Foundation
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    let authManager: AuthManager = AuthManager.shared
    var statusBar: StatusBarController?
    var popover: NSPopover?
    private var statusItem: NSStatusItem?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let popover = NSPopover()
        popover.contentSize = NSSize(width: 350, height: 350)
        popover.behavior = .transient
        popover.contentViewController = NSViewController()
        popover.contentViewController?.view = NSHostingView(rootView: MenuBarView())
        popover.contentViewController?.view.window?.makeKey()
        
        self.popover = popover

        self.statusItem = NSStatusBar.system.statusItem(withLength: CGFloat(NSStatusItem.variableLength))

        if let button = self.statusItem?.button {
            button.title = "Click"
            button.action = #selector(showPopover(_:))
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
//    open func applicationWillFinishLaunching(_ notification: Notification) {
//        initializeURIOptions()
//    }

    fileprivate func initializeURIOptions() {
        // register to listen to the url event
        let appleEventManager = NSAppleEventManager.shared()
        appleEventManager.setEventHandler(self, andSelector: #selector(handleGetURLEvent(event:withReplyEvent:)), forEventClass: AEEventClass(kInternetEventClass), andEventID: AEEventID(kAEGetURL))
    }
    
    @objc fileprivate func handleGetURLEvent(event: NSAppleEventDescriptor?, withReplyEvent replyEvent: NSAppleEventDescriptor?) {
        guard let event = event else {
            return
        }
        
        guard let urlStr: String = event.paramDescriptor(forKeyword: AEKeyword(keyDirectObject))?.stringValue else { return }
        
        authManager.onReceiveAuthUrlScheme(url: URL(string: urlStr)!)
    }
    
    @objc func showPopover(_ sender: AnyObject?) {
        if let button = self.statusItem?.button {
            if (self.popover?.isShown ?? false == true) {
                self.popover?.performClose(sender)
            } else {
                self.popover?.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
            }
        }
    }
}
