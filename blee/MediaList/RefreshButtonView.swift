//
//  RefreshButtonView.swift
//  blee
//
//  Created by J Tan on 2/9/22.
//

import SwiftUI

struct RefreshButtonView: View {
    @State var isHovered: Bool = false
    
    var body: some View {
        Image(systemName: "arrow.triangle.2.circlepath")
            .frame(width: 15, height: 15)
            .padding(5)
            .background(isHovered ? AuthManager.shared.authedUser!.profileColor! : Color.clear)
            .cornerRadius(5)
            .onHover() {_ in
                isHovered.toggle()
            }
            .help("Fetch updates made on the web app")
    }
}

struct RefreshButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButtonView()
    }
}
