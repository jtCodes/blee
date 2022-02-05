//
//  MediaStatusPickerView.swift
//  blee
//
//  Created by J Tan on 2/5/22.
//

import SwiftUI

struct MediaListPickerView: View {
    let mediaList: [MediaListPickerItem] 
    let statusLabel: [MediaType: [MediaListStatus: String]] = [.anime: [.current: "Watching",
                                                                        .planning: "Plan To Watch",
                                                                        .completed: "Completed",
                                                                        .repeating: "Rewatching",
                                                                        .paused: "Paused",
                                                                        .dropped: "Dropped"],
                                                               .manga: [
                                                                .current: "Reading",
                                                                .planning: "Plan To Read",
                                                                .completed: "Completed",
                                                                .repeating: "Rereading",
                                                                .paused: "Paused",
                                                                .dropped: "Dropped"],]
    @EnvironmentObject var mediaTrackingEntryStore: MediaTrackingEntryStore
    @Binding var selectedList: MediaListPickerItem
    var onMediaListSelect: (_ mediaListPicketItem: MediaListPickerItem) -> Void
    
    func getLabel(mediaListPickerItem: MediaListPickerItem) -> String {
        if (mediaListPickerItem.isMediaListStatus) {
            if let status = mediaListPickerItem.toMediaListStatus() {
                return statusLabel[mediaTrackingEntryStore.currentViewingMediaType]![status]!
            } else {
                return mediaListPickerItem.label
            }
        }
        return mediaListPickerItem.label
    }
    
    var body: some View {
        Menu {
            ForEach(mediaList, id: \.self) { listItem in
                Button {
                    onMediaListSelect(listItem)
                } label: {
                    Text(getLabel(mediaListPickerItem: listItem))
                }
            }
        } label: {
            Text(getLabel(mediaListPickerItem: selectedList))
        }
    }
}

//struct MediaStatusPickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        MediaStatusPickerView()
//    }
//}
