//
//  MediaRowInfoItemView.swift
//  blee
//
//  Created by J Tan on 2/4/22.
//

import SwiftUI

struct MediaRowInfoItemView: View {
    var label: String?
    var sfSymbolName: String?
    var helpText: String
    
    var body: some View {
        HStack(spacing: 2.5) {
            Image(systemName: sfSymbolName ?? "")
            Text(label ?? "")
                .fontWeight(.light)
        }
        .font(.subheadline)
        .help(helpText)
    }
}

struct MediaRowInfoItemView_Previews: PreviewProvider {
    static var previews: some View {
        MediaRowInfoItemView(label: "2", sfSymbolName: "star", helpText: "help")
    }
}
