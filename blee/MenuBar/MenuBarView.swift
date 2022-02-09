//
//  ContentView.swift
//  blee
//
//  Created by J Tan on 1/23/22.
//

import SwiftUI
import Kingfisher

struct MenuBarView: View {
    @ObservedObject var authManager: AuthManager = AuthManager.shared
    @Environment(\.openURL) var openURL
    @StateObject var mediaTrackingEntryStore: MediaTrackingEntryStore = MediaTrackingEntryStore()
    @ObservedObject var mediaListViewModel: MediaListViewModel = MediaListViewModel()
    @State var showingPopover: Bool = false
    @State private var searchText = ""
    
    var body: some View {
        VStack() {
            Spacer()
            if authManager.isAuthed && (authManager.authedUser != nil) {
                HStack() {
                    Text("ß")
                    Spacer()
                    LoggedInUserView()
                }
                .padding(.leading,5)
                .padding(.trailing, 5)
            } else {
                Button("Click to authorize this app") {
                    openURL(URL(string: "https://anilist.co/api/v2/oauth/authorize?client_id=7361&response_type=token")!)
                }
            }
            
            if authManager.isAuthed && (authManager.authedUser != nil) {
                MediaListView(viewModel: mediaListViewModel)
                    .environmentObject(mediaTrackingEntryStore)
            }
            Spacer()
            HStack() {
                Button("Quit") {
                    NSApplication.shared.terminate(nil)
                }
                Spacer()
                if authManager.isAuthed && (authManager.authedUser != nil) {
                    LogoutButtonView()
                }
            }
            .padding(5)
        }
        .padding(5)
        .accentColor(authManager.authedUser?.profileColor)
        .simultaneousGesture(
            TapGesture()
                .onEnded { _ in
                    DispatchQueue.main.async {
                        NSApp.keyWindow?.makeFirstResponder(nil)
                    }
                }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuBarView()
    }
}
