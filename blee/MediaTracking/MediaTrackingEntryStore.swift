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
    @Published var mediaTrackingEntryByMediaId: [Int: MediaTrackingEntry] = [:]
    
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
                var mediaTrackingEntryByMediaId: [Int: MediaTrackingEntry] = [:]
                
                if let lists = mediaListCollection.lists {
                    for list in lists {
                        if let entries = list?.entries {
                            for entry in entries {
                                if let entry = entry {
                                    mediaEntries.append(entry)
                                    mediaRowViewModelCollection.append(MediaRowViewModel(media: Media(shortMediaDetails: (entry.fragments.mediaListEntry.media?.fragments.shortMediaDetails)!),
                                                                                         mediaListEntry: entry))
                                    
                                    let mediaTrackingEntry: MediaTrackingEntry = MediaTrackingEntry(mediaId: entry.fragments.mediaListEntry.mediaId)
                                    mediaTrackingEntry.status = entry.fragments.mediaListEntry.status
                                    mediaTrackingEntry.score = entry.fragments.mediaListEntry.score ?? 0
                                    mediaTrackingEntry.progress = entry.fragments.mediaListEntry.progress ?? 0
                                    
                                    if let startAt = entry.fragments.mediaListEntry.startedAt {
                                        if let month = startAt.month,
                                           let day = startAt.day,
                                           let year = startAt.year {
                                            let formatter = DateFormatter()
                                            formatter.dateFormat = "M/d/yyyy"
                                            mediaTrackingEntry.startDate = formatter.date(from: "\(month)/\(day)/\(year)")!
                                            mediaTrackingEntry.isStartDateExist = true
                                        }
                                    }
                                    if let completeAt = entry.fragments.mediaListEntry.completedAt {
                                        if let month = completeAt.month,
                                           let day = completeAt.day,
                                           let year = completeAt.year {
                                            let formatter = DateFormatter()
                                            formatter.dateFormat = "M/d/yyyy"
                                            mediaTrackingEntry.completeDate = formatter.date(from: "\(month)/\(day)/\(year)")!
                                            mediaTrackingEntry.isCompleteDateExist = true
                                        }
                                    }
                                    
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
