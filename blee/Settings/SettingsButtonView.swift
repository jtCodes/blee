//
//  SettingsButtonView.swift
//  blee
//
//  Created by J Tan on 2/9/22.
//

import SwiftUI

struct SettingsButtonView: View {
    @State var isHovered: Bool = false
    
    var body: some View {
        Menu {
            LogoutButtonView()
            Button(action: {
                NSApplication.shared.terminate(nil)
            }) {
                Label("Quit", systemImage: "minus.circle")
            }
        } label: {
            Image(systemName: "gearshape.fill")
        }
        .menuStyle(BorderlessButtonMenuStyle())
        .frame(width: 35, height: 15, alignment: .center)
        .padding(5)
        .background(isHovered ? AuthManager.shared.authedUser!.profileColor! : Color.clear)
        .cornerRadius(5)
        .onHover() {_ in
            isHovered.toggle()
        }
    }
}

struct SettingsButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButtonView()
    }
}
