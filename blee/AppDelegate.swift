//
//  AppDelegate.swift
//  blee
//
//  Created by J Tan on 1/23/22.
//

import Foundation
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
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
