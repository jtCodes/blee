//
//  MediaTrackingSettings.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import Foundation

class MediaTrackingEntry: ObservableObject {
    @Published var initialEntry: MediaTrackingEntryModel
    @Published var currentEntry: MediaTrackingEntryModel
    
    init(initialEntry: MediaTrackingEntryModel,
         currentEntry: MediaTrackingEntryModel) {
        self.initialEntry = initialEntry
        self.currentEntry = currentEntry
    }
    
    func currentEntryUpdated() {
        currentEntry = currentEntry.copy(with: nil) as! MediaTrackingEntryModel
    }
    
    func initialEntryUpdated() {
        initialEntry = initialEntry.copy(with: nil) as! MediaTrackingEntryModel
    }
}

class MediaTrackingEntryModel: ObservableObject {
    var mediaId: Int
    @Published var status: MediaListStatus?
    @Published var isEdited: Bool = false
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = MediaTrackingEntryModel(mediaId: mediaId)
        copy.mediaId = mediaId
        copy.isEdited = isEdited
        copy.status = status
        return copy
    }
    
    init(mediaId: Int) {
        self.mediaId = mediaId
        self.status = status
    }
}
