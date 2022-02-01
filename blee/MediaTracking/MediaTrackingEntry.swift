//
//  MediaTrackingSettings.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import Foundation

class MediaTrackingEntry: ObservableObject {
    @Published var status: MediaListStatus?
    @Published var isEdited: Bool = false
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = MediaTrackingEntry()
        copy.isEdited = isEdited
        copy.status = status
        return copy
    }
    
    init() {
        self.status = status
        print("init")
    }
}
