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
    @Published var isEdited: Bool = false
    @Published var status: MediaListStatus? = nil {
        willSet(newValue) {
            if (newValue != status) {
                isEdited = true
            }
        }
    }
    @Published var score: Double = 0.0 {
        willSet(newValue) {
            if (newValue != score) {
                isEdited = true
            }
        }
    }
    @Published var progress: Int = 0 {
        willSet(newValue) {
            if (newValue != progress) {
                isEdited = true
            }
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = MediaTrackingEntryModel(mediaId: mediaId)
        copy.mediaId = mediaId
        copy.isEdited = isEdited
        copy.status = status
        copy.score = score
        copy.progress = progress
        return copy
    }
    
    init(mediaId: Int) {
        self.mediaId = mediaId
    }
}
