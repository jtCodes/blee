//
//  MediaRowViewModel.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import Foundation

class MediaRowViewModel: Hashable, ObservableObject {
    func hash(into hasher: inout Hasher) {
        hasher.combine(media.id)
    }
    
    static func == (lhs: MediaRowViewModel, rhs: MediaRowViewModel) -> Bool {
        return lhs.media.id == rhs.media.id &&
        lhs.mediaListEntry.mediaId == rhs.mediaListEntry.mediaId
    }
    
    @Published var isExpanded: Bool = false
    var media: Media
    var mediaListEntry: MediaTrackingEntry
    var mediaTrackingEditViewModel: MediaTrackingEditViewModel
    
    internal init(media: Media,
                  mediaListEntry: MediaTrackingEntry) {
        self.media = media
        self.mediaListEntry = mediaListEntry
        self.mediaTrackingEditViewModel = MediaTrackingEditViewModel()
        self.mediaTrackingEditViewModel.initialEntry = mediaListEntry.copy(with: nil) as? MediaTrackingEntry
    }
}
