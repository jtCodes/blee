//
//  StatusBarController.swift
//  MinimalMenuBarApp
//
//  Created by Brad Greenlee on 1/11/21.
//
import AppKit
import SwiftUI

class StatusBarController {
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem
    private var mainView: NSView
    var popover: NSPopover?
    
    init(_ view: NSView) {
        self.mainView = view
        self.statusBar = NSStatusBar()
        self.statusItem = NSStatusBar.system.statusItem(withLength: CGFloat(NSStatusItem.variableLength))

        let popover = NSPopover()
        popover.contentSize = NSSize(width: 350, height: 350)
        popover.behavior = .transient
        popover.contentViewController = NSViewController()
        popover.contentViewController?.view = NSHostingView(rootView: MenuBarView())
        popover.contentViewController?.view.window?.makeKey()
        self.popover = popover

        if let button = self.statusItem.button {
            button.title = "Click"
            button.action = #selector(showPopover)
        }
    }
    
    @objc func showPopover(_ sender: AnyObject?) {
        print("click")
        if let button = self.statusItem.button {
            if ((self.popover?.isShown) != nil) {
                print("click")
                self.popover?.performClose(sender)
            } else {
                self.popover?.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
            }
        }
    }
}

final class HostingView<Content: View>: NSHostingView<Content> {
    override func viewDidMoveToWindow() {
        print("move to window")
        self.window?.makeKey()
    }
    
    override func acceptsFirstMouse(for event: NSEvent?) -> Bool {
        return true
    }
    
    override func updateTrackingAreas() {
        let trackingArea = NSTrackingArea(rect: bounds, options: [.enabledDuringMouseDrag, .mouseEnteredAndExited, .activeInActiveApp], owner: self, userInfo: nil)
        addTrackingArea(trackingArea)
    }
    
    override func mouseDown(with event: NSEvent) {
        DispatchQueue.main.async {
            NSApp.keyWindow?.makeFirstResponder(nil)
        }
       }
}

struct SwiftyUIScrollView: NSViewControllerRepresentable {
    let mainView: NSView
    
    func makeNSViewController(context: Context) -> NSViewController {
        let vc = NSViewController()
        vc.view = mainView
        vc.view.frame = NSRect(x: 0, y: 0, width: 200, height: 200)
        return vc
    }
    
    func updateNSViewController(_ nsViewController: NSViewController, context: Context) {
        
    }
    
    typealias NSViewControllerType = NSViewController
}
