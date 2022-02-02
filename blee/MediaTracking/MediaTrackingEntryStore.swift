//
//  MediaTrackingEntryStore.swift
//  blee
//
//  Created by J Tan on 2/1/22.
//

import Foundation

class MediaTrackingEntryStore: ObservableObject {
    @Published var mediaListCollection: GetMediaListCollectionQuery.Data.MediaListCollection?
    @Published var mediaEntries: [GetMediaListCollectionQuery.Data.MediaListCollection.List.Entry] = []
    @Published var isFetchError: Bool = false
    @Published var mediaRowViewModelCollection: [MediaRowViewModel] = []
    var mediaTrackingEntryByMediaId: [Int: MediaTrackingEntry] = [:]

    func fetchMediaCollection(user: User,
                              type: MediaType,
                              shouldFetchFromCache: Bool) {
        AnilistNetworkClient.shared.fetchMediaListCollection(userId: user.id,
                                                             userName: user.name,
                                                             type: type,
                                                             shouldFetchFromCache: shouldFetchFromCache) { mediaListCollection in
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
                                    self.mediaTrackingEntryByMediaId[entry.fragments.mediaListEntry.id] = MediaTrackingEntry(initialEntry: mediaTrackingEntry,
                                                                                                                             currentEntry: (mediaTrackingEntry.copy(with: nil) as? MediaTrackingEntryModel)!)
                                }
                            }
                        }
                    }
                    self.mediaEntries = mediaEntries
                    self.mediaRowViewModelCollection = mediaRowViewModelCollection
                    print(mediaRowViewModelCollection.map {$0.mediaListEntry.fragments.mediaListEntry.media?.fragments.shortMediaDetails.title?.userPreferred})
                }
                self.mediaListCollection = mediaListCollection
            } else {
                self.isFetchError = true
            }
        }
    }
}
