//
//  MediaTrackingEntryStore.swift
//  blee
//
//  Created by J Tan on 2/1/22.
//

import Foundation

class MediaTrackingEntryStore: ObservableObject {
    var initEntry: [Int: MediaTrackingEntry] = [:]
    var currentEntry: [Int: MediaTrackingEntry] = [:]
}
