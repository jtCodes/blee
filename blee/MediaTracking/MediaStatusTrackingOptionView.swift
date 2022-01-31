//
//  MediaStatusTrackingOptionView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaStatusTrackingOptionView: View {
    @EnvironmentObject var mediaTrackingEntry: MediaTrackingEntry
    
    var body: some View {
        MediaTrackingOptionView(title: "Status") {
            Menu {
                Button {
                    mediaTrackingEntry.status = .current
                } label: {
                    Text("Watching")
                    Image(systemName: "arrow.down.right.circle")
                }
                Button {
                    mediaTrackingEntry.status = .planning
                } label: {
                    Text("Plan to Watch")
                    Image(systemName: "arrow.up.and.down.circle")
                }
            } label: {
                if let status = mediaTrackingEntry.status {
                    Text(status.rawValue)
                    Image(systemName: "tag.circle")
                } else {
                    Text("-")
                }
            }
        }
    }
}

struct MediaStatusTrackingOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MediaStatusTrackingOptionView()
    }
}
