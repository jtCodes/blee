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
        //        let view = HostingView(rootView: MenuBarView().frame(width: 300))
        //        view.frame = NSRect(x: 0, y: 0, width: 350, height: 550)
        //        view.window?.becomeKey()
        //
        //        let menuItem = NSMenuItem()
        //        menuItem.view = view
        //
        //        let menu = NSMenu()
        //        menu.addItem(menuItem)
        //
        //        // StatusItem is stored as a class property.
        //        self.statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        //        self.statusItem?.menu = menu
        //        self.statusItem?.button?.title = "Test"
        
        let popover = NSPopover()
        popover.contentSize = NSSize(width: 400, height: 550)
        popover.behavior = .transient
        popover.contentViewController = NSViewController()
        popover.contentViewController?.view = NSHostingView(rootView: MenuBarView().frame(width: 400,
                                                                                          height: 550))
        popover.contentViewController?.view.window?.becomeKey()
        
        self.popover = popover
        
        self.statusItem = NSStatusBar.system.statusItem(withLength: CGFloat(NSStatusItem.variableLength))
        
        if let button = self.statusItem?.button {
            button.title = "ß"
            //            button.image = NSImage(named: NSImage.Name("icon-orange"))
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
    
    @objc func showPopover(_ sender: NSButton) {
        if let button = self.statusItem?.button {
            if (self.popover?.isShown ?? false == true) {
                self.popover?.performClose(sender)
            } else {
                let invisibleWindow = NSWindow(contentRect: NSMakeRect(0, 0, 20, 5), styleMask: .borderless, backing: .buffered, defer: false)
                invisibleWindow.backgroundColor = .red
                invisibleWindow.alphaValue = 0
                
                // find the coordinates of the statusBarItem in screen space
                let buttonRect:NSRect = button.convert(button.bounds, to: nil)
                let screenRect:NSRect = button.window!.convertToScreen(buttonRect)
                
                // calculate the bottom center position (10 is the half of the window width)
                let posX = screenRect.origin.x + (screenRect.width / 2) - 10
                let posY = screenRect.origin.y
                
                // position and show the window
                invisibleWindow.setFrameOrigin(NSPoint(x: posX, y: posY))
                invisibleWindow.makeKeyAndOrderFront(self)
                
                // position and show the NSPopover
                popover?.show(relativeTo: invisibleWindow.contentView!.frame, of: invisibleWindow.contentView!, preferredEdge: NSRectEdge.minY)
                sender.bounds = sender.bounds.offsetBy(dx: 0, dy: invisibleWindow.contentView!.frame.height)
                NSApp.activate(ignoringOtherApps: true)
                
                // don't want the textfield to be automatically focused
                NSApp.keyWindow?.makeFirstResponder(nil)
            }
        }
    }
}

class WelcomeViewController: NSViewController {
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
