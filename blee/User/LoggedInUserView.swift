//
//  LoggedInUserView.swift
//  blee
//
//  Created by J Tan on 2/6/22.
//

import SwiftUI
import Kingfisher

struct LoggedInUserView: View {
    @Environment(\.openURL) var openURL
    @ObservedObject var authManager: AuthManager = AuthManager.shared
    @State private var hover = false
    
    var body: some View {
        if authManager.isAuthed && (authManager.authedUser != nil) {
            HStack() {
                KFImage(URL(string: authManager.authedUser!.avatar.large!)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                    .cornerRadius(5)
                Text(authManager.authedUser!.name)
            }
            .padding(5)
            .background(hover ? authManager.authedUser!.profileColor! : Color.clear)
            .cornerRadius(5)
            .onHover {_ in self.hover.toggle()}
            .onTapGesture {
                openURL(URL(string: "https://anilist.co/user/\(authManager.authedUser!.name)")!)
            }
        }
    }
}

struct LoggedInUserView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInUserView()
    }
}
