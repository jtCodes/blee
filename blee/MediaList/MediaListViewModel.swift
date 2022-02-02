//
//  MediaListViewModel.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import Foundation

class MediaListViewModel: ObservableObject {
    @Published var mediaListCollection: GetMediaListCollectionQuery.Data.MediaListCollection?
    @Published var mediaEntries: [GetMediaListCollectionQuery.Data.MediaListCollection.List.Entry] = []
    @Published var mediaRowViewModelCollection: [MediaRowViewModel] = []
    @Published var isFetchError: Bool = false
    var initEntry: [Int: MediaTrackingEntryModel] = [:]
    var currentEntry: [Int: MediaTrackingEntryModel] = [:]
    
    func fetchMediaCollection(user: User, type: MediaType) {
        AnilistNetworkClient.shared.fetchMediaListCollection(userId: user.id,
                                                             userName: user.name,
                                                             type: type) { mediaListCollection in
            if let mediaListCollection = mediaListCollection {
                var mediaEntries:  [GetMediaListCollectionQuery.Data.MediaListCollection.List.Entry] = []
                var mediaRowViewModelCollection: [MediaRowViewModel] = []
                if let lists = mediaListCollection.lists {
                    for list in lists {
                        if let entries = list?.entries {
                            for entry in entries {
                                if let entry = entry {
                                    mediaEntries.append(entry)
                                    mediaRowViewModelCollection.append(MediaRowViewModel(media: Media(shortMediaDetails: (entry.fragments.mediaListEntry.media?.fragments.shortMediaDetails)!),
                                                                                         mediaListEntry: entry))
                                    
                                    let mediaTrackingEntry: MediaTrackingEntryModel = MediaTrackingEntryModel(mediaId: entry.fragments.mediaListEntry.mediaId)
                                    mediaTrackingEntry.status = entry.fragments.mediaListEntry.status
                                    
                                    self.initEntry[entry.fragments.mediaListEntry.id] = mediaTrackingEntry.copy(with: nil) as? MediaTrackingEntryModel
                                    self.currentEntry[entry.fragments.mediaListEntry.id] = mediaTrackingEntry
                                }
                            }
                        }
                    }
                    self.mediaEntries = mediaEntries
                    self.mediaRowViewModelCollection = mediaRowViewModelCollection
                }
                self.mediaListCollection = mediaListCollection
            } else {
                self.isFetchError = true
            }
        }
    }
}
