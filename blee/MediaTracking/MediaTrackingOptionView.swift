//
//  MediaStatusSettingOption.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaTrackingOptionView<Content: View>: View {
    var title: String
    var content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            content()
        }
    }
}

struct MediaStatusSettingOption_Previews: PreviewProvider {
    static var previews: some View {
        MediaTrackingOptionView(title: "Test") {
            Text("hello")
        }
    }
}
