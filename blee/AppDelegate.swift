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
                                                                                          height: 550)
                                                                .preferredColorScheme(.dark))
        popover.contentViewController?.view.window?.becomeKey()
        
        self.popover = popover
        
        self.statusItem = NSStatusBar.system.statusItem(withLength: CGFloat(NSStatusItem.variableLength))
        
        if let button = self.statusItem?.button {
            button.title = "ß"
            button.titleColor = NSColor(hex: "#f07878")

//            button.image = NSImage(named: NSImage.Name("menu-bar-icon"))?.resizeImage(width: 25, 25)
            
//            button.action = #selector(showPopover(_:))
        }
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.handlePopoverClose(_:)),
                                               name: NSPopover.didCloseNotification,
                                               object: nil)
        
        NSEvent.addLocalMonitorForEvents(matching: .leftMouseDown) { [weak self] event in
            if event.window == self?.statusItem?.button?.window {
                // Your action:
                self?.showPopover((self?.statusItem?.button)!)
                return nil
            }

            return event
        }
        
        // Close main app window
        if let window = NSApplication.shared.windows.first {
            window.close()
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
    
    @objc func handlePopoverClose(_ sender: AnyObject) {
        if let button = self.statusItem?.button {
            button.isHighlighted = false
        }
    }
    
    @objc func showPopover(_ sender: NSButton) {
        if let button = self.statusItem?.button {
            if (self.popover?.isShown ?? false == true) {
                self.popover?.performClose(sender)
                button.isHighlighted = false
            } else {
                button.isHighlighted = true
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
//                sender.bounds = sender.bounds.offsetBy(dx: 0, dy: invisibleWindow.contentView!.frame.height)
                NSApp.activate(ignoringOtherApps: true)
                
                // don't want the textfield to be automatically focused
//                DispatchQueue.main.async {
//                    NSApp.keyWindow?.makeFirstResponder(nil)
//                }
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

extension NSImage {
    func resizeImage(width: CGFloat, _ height: CGFloat) -> NSImage {
        let img = NSImage(size: CGSize(width:width, height:height))

        img.lockFocus()
        let ctx = NSGraphicsContext.current
        ctx?.imageInterpolation = .high
        self.draw(in: NSMakeRect(0, 0, width, height), from: NSMakeRect(0, 0, size.width, size.height), operation: .copy, fraction: 1)
        img.unlockFocus()

        return img
    }
}

extension NSButton {

@IBInspectable var titleColor: NSColor? {
    get {
        return   NSColor.white
    }
    set {
        let pstyle = NSMutableParagraphStyle()
        pstyle.alignment = .center
        
        self.attributedTitle = NSAttributedString(
            string: self.title,
            attributes: [ NSAttributedString.Key.foregroundColor :newValue, NSAttributedString.Key.paragraphStyle: pstyle])
        
    }
   }
 }

extension String  {
    func conformsTo(_ pattern: String) -> Bool {
        return NSPredicate(format:"SELF MATCHES %@", pattern).evaluate(with: self)
    }
}

extension NSColor {
    convenience init(hex: String) {
        let trimHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        let dropHash = String(trimHex.dropFirst()).trimmingCharacters(in: .whitespacesAndNewlines)
        let hexString = trimHex.starts(with: "#") ? dropHash : trimHex
        let ui64 = UInt64(hexString, radix: 16)
        let value = ui64 != nil ? Int(ui64!) : 0
        // #RRGGBB
        var components = (
            R: CGFloat((value >> 16) & 0xff) / 255,
            G: CGFloat((value >> 08) & 0xff) / 255,
            B: CGFloat((value >> 00) & 0xff) / 255,
            a: CGFloat(1)
        )
        if String(hexString).count == 8 {
            // #RRGGBBAA
            components = (
                R: CGFloat((value >> 24) & 0xff) / 255,
                G: CGFloat((value >> 16) & 0xff) / 255,
                B: CGFloat((value >> 08) & 0xff) / 255,
                a: CGFloat((value >> 00) & 0xff) / 255
            )
        }
        self.init(red: components.R, green: components.G, blue: components.B, alpha: components.a)
    }
}
