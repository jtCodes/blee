//
//  MediaTrackingSettings.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import Foundation

class MediaTrackingEntry: ObservableObject {
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
    @Published var progressVolume: Int = 0 {
        willSet(newValue) {
            if (newValue != progressVolume) {
                isEdited = true
            }
        }
    }
    @Published var repeatCount: Int = 0 {
        willSet(newValue) {
            if (newValue != repeatCount) {
                isEdited = true
            }
        }
    }
    @Published var note: String = "" {
        willSet(newValue) {
            if (newValue != note) {
                isEdited = true
            }
        }
    }
    @Published var startDate: Date = Date() {
        willSet(newValue) {
            if (newValue != startDate) {
                isEdited = true
            }
        }
    }
    @Published var isStartDateExist: Bool = false {
        willSet(newValue) {
            if (newValue != isStartDateExist) {
                isEdited = true
            }
        }
    }
    @Published var completeDate: Date = Date() {
        willSet(newValue) {
            if (newValue != completeDate) {
                isEdited = true
            }
        }
    }
    @Published var isCompleteDateExist: Bool = false {
        willSet(newValue) {
            if (newValue != isCompleteDateExist) {
                isEdited = true
            }
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = MediaTrackingEntry(mediaId: mediaId)
        copy.mediaId = mediaId
        copy.isEdited = isEdited
        copy.status = status
        copy.score = score
        copy.progress = progress
        copy.progressVolume = progressVolume
        copy.repeatCount = repeatCount
        copy.note = note
        copy.startDate = startDate
        copy.isStartDateExist = isStartDateExist
        copy.completeDate = completeDate
        copy.isCompleteDateExist = isCompleteDateExist
        return copy
    }
    
    init(mediaId: Int) {
        self.mediaId = mediaId
    }
    
    func reset(initialEntry: MediaTrackingEntry) {
        mediaId = initialEntry.mediaId
        isEdited = initialEntry.isEdited
        status = initialEntry.status
        score = initialEntry.score
        progress = initialEntry.progress
        progressVolume = initialEntry.progressVolume
        repeatCount = initialEntry.repeatCount
        note = initialEntry.note
        startDate = initialEntry.startDate
        isStartDateExist = initialEntry.isStartDateExist
        completeDate = initialEntry.completeDate
        isCompleteDateExist = initialEntry.isCompleteDateExist
    }
}
