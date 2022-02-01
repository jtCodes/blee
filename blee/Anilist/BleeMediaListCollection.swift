//
//  BleeMediaListCollection.swift
//  blee
//
//  Created by J Tan on 1/30/22.
//

import Foundation

// MARK: - MediaListCollection
struct BleeMediaListCollection {
    let lists: [MediaList]?
    let user: User?
}

// MARK: - List
struct MediaList {
    let name: String?
    let isCustomList, isCompletedList: Bool?
    let entries: [MediaEntry]?
}

// MARK: - Entry
struct MediaEntry {
    let id, mediaID: Int
    let status: String?
    let score, progress, entryRepeat: Int?
    let priority: Int?
    let isPrivate, hiddenFromStatusLists: Bool?
    let notes: String?
    let updatedAt: Int?
    let startedAt, completedAt: FuzzyDateInput?
    let media: Media?
}
