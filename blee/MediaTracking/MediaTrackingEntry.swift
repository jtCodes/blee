//
//  MediaTrackingSettings.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import Foundation

class MediaTrackingEntry: ObservableObject {
    var mediaId: Int
    @Published var status: MediaListStatus?
    @Published var isEdited: Bool = false
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = MediaTrackingEntry(mediaId: mediaId)
        copy.mediaId = mediaId
        copy.isEdited = isEdited
        copy.status = status
        return copy
    }
    
    init(mediaId: Int) {
        self.mediaId = mediaId
        self.status = status
        print("init")
    }
}
