//
//  User.swift
//  ANIGO
//
//  Created by JT on 6/1/21.
//

import Foundation
import SwiftUI

struct User: Hashable {
    let id: Int
    let avatar: Avatar
    let name: String
    let profileColor: Color?
    let mediaListOptions: MediaListOptions? = nil
    
    internal init(id: Int,
                  avatar: Avatar,
                  name: String,
                  profileColor: Color?) {
        self.id = id
        self.avatar = avatar
        self.name = name
        self.profileColor = profileColor
    }
    
    init(userDetails: UserDetails) {
        self.id = userDetails.id
        self.avatar = Avatar(large: userDetails.avatar?.large,
                             medium: userDetails.avatar?.medium)
        self.name = userDetails.name
        self.profileColor = nil
    }
}

struct Avatar: Hashable {
    let id: UUID = UUID()
    let large: String?
    let medium: String?
}

// MARK: - MediaListOptions
struct MediaListOptions: Hashable {
    let scoreFormat, rowOrder: String?
    let animeList, mangaList: AnimeListClass?
}

// MARK: - AnimeListClass
struct AnimeListClass: Hashable {
    let sectionOrder, customLists: [String]?
    let splitCompletedSectionByFormat: Bool?
}

