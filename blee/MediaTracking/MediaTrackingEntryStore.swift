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
    @Published var mediaTrackingEntryByMediaId: [Int: MediaTrackingEntryModel] = [:]

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
                var mediaTrackingEntryByMediaId: [Int: MediaTrackingEntryModel] = [:]
                
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
                                    mediaTrackingEntry.score = entry.fragments.mediaListEntry.score ?? 0
                                    mediaTrackingEntry.progress = entry.fragments.mediaListEntry.progress ?? 0
                                    mediaTrackingEntry.isEdited = false
                                    
                                    mediaTrackingEntryByMediaId[entry.fragments.mediaListEntry.id] = mediaTrackingEntry
                                }
                            }
                        }
                    }
                    self.mediaEntries = mediaEntries
                    self.mediaRowViewModelCollection = mediaRowViewModelCollection
                    self.mediaTrackingEntryByMediaId = mediaTrackingEntryByMediaId
                }
                self.mediaListCollection = mediaListCollection
            } else {
                self.isFetchError = true
            }
        }
    }
}
