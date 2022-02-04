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
    let statusLabel: [MediaType: [MediaListStatus: String]] = [.anime: [.current: "Watching",
                                                                        .planning: "Plan To Watch",
                                                                        .completed: "Completed",
                                                                        .repeating: "Rewatching",
                                                                        .paused: "Paused",
                                                                        .dropped: "Dropped"],
                                                               .manga: [.current: "Reading",
                                                                        .planning: "Plan To Read",
                                                                        .completed: "Completed",
                                                                        .repeating: "Rereading",
                                                                        .paused: "Paused",
                                                                        .dropped: "Dropped"],]
    @EnvironmentObject var mediaTrackingEntry: MediaTrackingEntry
    
    var body: some View {
        MediaTrackingOptionView(title: "Status") {
            Menu {
                ForEach(statusList, id: \.self) { status in
                    Button {
                        mediaTrackingEntry.status = status
                    } label: {
                        Text(statusLabel[mediaTrackingEntry.mediaType]![status] ?? "")
                    }
                }
            } label: {
                if let status = mediaTrackingEntry.status {
                    Text(statusLabel[mediaTrackingEntry.mediaType]![status] ?? "")
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
