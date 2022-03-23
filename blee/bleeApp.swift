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
    @Environment(\.openURL) var openURL
    @ObservedObject var authManager: AuthManager = AuthManager.shared
    @State var searchText: String = ""
    
    var body: some Scene {
        //        Settings {
        //           EmptyView()
        //        }
        WindowGroup {
            VStack() {
                if (authManager.isAuthed) {
                    Text("Hello " + (authManager.authedUser?.name ?? "") + ", you may close this window now")
                } else {
                    Button("Click to login") {
                        openURL(URL(string: "https://anilist.co/api/v2/oauth/authorize?client_id=7361&response_type=token")!)
                    }
                }
            }
            .frame(width: 200, height: 200)
            .handlesExternalEvents(preferring: Set(arrayLiteral: "blee"),
                                   allowing: Set(arrayLiteral: "*")) // activate existing window if exists
            .onOpenURL(perform: { url in
                authManager.onReceiveAuthUrlScheme(url: url)
            })
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
