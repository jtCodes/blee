//
//  ContentView.swift
//  blee
//
//  Created by J Tan on 1/23/22.
//

import SwiftUI

struct MenuBarView: View {
    @ObservedObject var authManager: AuthManager = AuthManager.shared
    @Environment(\.openURL) var openURL
    @State var showingPopover: Bool = false
    @State private var searchText = ""
    
    var body: some View {
        
        Text("Searching for \(searchText)")
            .searchable(text: $searchText, prompt: "Look for something")
            .navigationTitle("Searchable Example")
        VStack() {
            if authManager.isAuthed && (authManager.authedUser != nil) {
                Text("Hello, \(authManager.authedUser!.name)")
                    .padding()
            } else {
                Button("CLICK TO AUTH") {
                    openURL(URL(string: "https://anilist.co/api/v2/oauth/authorize?client_id=7361&response_type=token")!)
                }
                Button("Show Menu") {
                    showingPopover = true
                }
                .popover(isPresented: $showingPopover) {
                    Text("Your content here")
                        .font(.headline)
                        .padding()
                }
            }
            Button("QUIT") {
                NSApplication.shared.terminate(nil)
            }
            
            if authManager.isAuthed && (authManager.authedUser != nil) {
                MediaListView()
                LogoutButtonView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarView()
    }
}
