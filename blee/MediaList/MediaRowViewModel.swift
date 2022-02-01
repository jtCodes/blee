//
//  MediaRowViewModel.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import Foundation

struct MediaRowViewModel: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(media.id)
    }
    
    static func == (lhs: MediaRowViewModel, rhs: MediaRowViewModel) -> Bool {
        return lhs.media.id == rhs.media.id &&
        lhs.mediaListEntry.fragments.mediaListEntry.id == rhs.mediaListEntry.fragments.mediaListEntry.id
    }
    
    var media: Media
    var mediaListEntry: GetMediaListCollectionQuery.Data.MediaListCollection.List.Entry
}
