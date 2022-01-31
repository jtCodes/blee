//
//  bleeApp.swift
//  blee
//
//  Created by J Tan on 1/23/22.
//

import SwiftUI

@main
struct bleeApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                EmptyView()
                List {
                    Text("Hello World")
                    Text("Hello World")
                    Text("Hello World")
                }
                Menu {
                    Button {
                        
                    } label: {
                        Text("Linear")
                        Image(systemName: "arrow.down.right.circle")
                    }
                    Button {
                        
                    } label: {
                        Text("Radial")
                        Image(systemName: "arrow.up.and.down.circle")
                    }
                } label: {
                    Text("Style")
                    Image(systemName: "tag.circle")
                }
                .handlesExternalEvents(preferring: Set(arrayLiteral: "blee"),
                                       allowing: Set(arrayLiteral: "*")) // activate existing window if exists
                .onOpenURL(perform: { url in
                    AuthManager.shared.onReceiveAuthUrlScheme(url: url)
                })
            }
            .toolbar {
                ToolbarItem {
                    Menu {
                        Text("haha")
                    } label: {
                        Label("Filter", systemImage: "slider.horizontal.3")
                    }
                }
            }
        }
        .commands {
            CommandGroup(replacing: .newItem, addition: {})
        }
        .handlesExternalEvents(matching: Set(arrayLiteral: "*")) // create new window if doesn't exist
    }
}


extension URL {
    var isDeeplink: Bool {
        return scheme == "blee" // matches my-url-scheme://<rest-of-the-url>
    }
}
