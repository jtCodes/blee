//
//  LogoutButtonView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI

struct LogoutButtonView: View {
    var body: some View {
        Button {
            KeychainSwift().delete(AnilistKeychainKey.accessToken.rawValue)
            KeychainSwift().delete(AnilistKeychainKey.expirationDate.rawValue)
            AuthManager.shared.isAuthed = false
            AuthManager.shared.authedUser = nil
        } label: {
            Text("Logout")
            Image(systemName: "arrow.down.right.circle")
        }
    }
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
    }
}
