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
    @Published var animeMediaRowViewModelCollection: [MediaRowViewModel] = []
    @Published var mangaMediaRowViewModelCollection: [MediaRowViewModel] = []
    @Published var isSavingToServer: Bool = false
    @Published var currentViewingMediaType: MediaType = .anime
    var mediaTrackingEntryByMediaId: [Int: MediaTrackingEntry] = [:]
    
    func fetchMediaCollection(user: User,
                              type: MediaType,
                              shouldFetchFromCache: Bool) {
        // TODO: simplify this
        if ((shouldFetchFromCache &&
            (type == .anime && animeMediaRowViewModelCollection.isEmpty ||
             type == .manga && mangaMediaRowViewModelCollection.isEmpty)) || !shouldFetchFromCache) {
            
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
                                        let mediaTrackingEntry: MediaTrackingEntry = MediaTrackingEntry(mediaId: entry.fragments.mediaListEntry.mediaId,
                                                                                                        mediaType: type)
                                        mediaTrackingEntry.media = Media(mediaDetails: (entry.fragments.mediaListEntry.media?.fragments.mediaDetails)!)
                                        mediaTrackingEntry.status = entry.fragments.mediaListEntry.status
                                        mediaTrackingEntry.score = entry.fragments.mediaListEntry.score ?? 0
                                        mediaTrackingEntry.progress = entry.fragments.mediaListEntry.progress ?? 0
                                        mediaTrackingEntry.progressVolume = entry.fragments.mediaListEntry.progressVolumes ?? 0
                                        mediaTrackingEntry.repeatCount = entry.fragments.mediaListEntry.repeat ?? 0
                                        mediaTrackingEntry.note = entry.fragments.mediaListEntry.notes ?? ""
                                        mediaTrackingEntry.isPrivate = entry.fragments.mediaListEntry.private ?? false
                                        
//                                        print(entry.fragments.mediaListEntry.customLists?[0])
                                        
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
                                        
                                        mediaEntries.append(entry)
                                        mediaRowViewModelCollection.append(MediaRowViewModel(media: Media(mediaDetails: (entry.fragments.mediaListEntry.media?.fragments.mediaDetails)!),
                                                                                             mediaListEntry: mediaTrackingEntry))
                                        self.mediaTrackingEntryByMediaId[mediaTrackingEntry.mediaId] = mediaTrackingEntry
                                        
                                    }
                                }
                            }
                        }
                        self.mediaEntries = mediaEntries
                        
                        if (type == .anime) {
                            self.animeMediaRowViewModelCollection = mediaRowViewModelCollection
                        } else {
                            self.mangaMediaRowViewModelCollection = mediaRowViewModelCollection
                        }
                    }
                    self.mediaListCollection = mediaListCollection
                } else {
                    self.isFetchError = true
                }
            }
        }
        
        currentViewingMediaType = type
    }
    
    func getMediaRowViewModelCollection() -> [MediaRowViewModel] {
        if (currentViewingMediaType == .anime) {
            return animeMediaRowViewModelCollection
        }
        
        return mangaMediaRowViewModelCollection
    }
}
