//
//  MediaStatusTrackingOptionView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaStatusTrackingOptionView: View {
    let statusList: [MediaListStatus] = [.current,
                                         .planning,
                                         .completed,
                                         .repeating,
                                         .paused,
                                         .dropped]
    @EnvironmentObject var mediaTrackingEntry: MediaTrackingEntryModel
    
    var body: some View {
        MediaTrackingOptionView(title: "Status") {
            Menu {
                ForEach(statusList, id: \.self) { status in
                    Button {
                        mediaTrackingEntry.status = status
//                        mediaTrackingEntry.currentEntry.isEdited = true
//                        mediaTrackingEntry.currentEntryUpdated()
                    } label: {
                        Text(status.rawValue)
                    }
                }
            } label: {
                if let status = mediaTrackingEntry.status {
                    Text(status.rawValue)
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
