//
//  HoverableButtonView.swift
//  blee
//
//  Created by J Tan on 8/13/22.
//

import SwiftUI

struct HoverableButtonView: View {
    @Binding var isSelected: Bool
    @State var isHovered: Bool = false
    var iconName: String
    var helperText: String
    
    var body: some View {
        Image(systemName: iconName)
            .frame(width: 15, height: 15)
            .padding(5)
            .background(isHovered || isSelected ? AuthManager.shared.authedUser!.profileColor! : Color.clear)
            .cornerRadius(5)
            .onHover() {_ in
                isHovered.toggle()
            }
            .help(helperText)
    }
}

struct HoverableButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HoverableButtonView(isSelected: .constant(true),
                            iconName: "arrow.triangle.2.circlepath",
                            helperText: "")
    }
}
