//
//  MediaListViewModel.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import Foundation

class MediaListViewModel: ObservableObject {
    var tabBarItems: [TabBarItem<MediaType>]
    @Published var selectedMediaType: MediaType = .anime
    
    init() {
    tabBarItems = [TabBarItem(id: .anime,
                                                           label: "Anime",
                                                           selectedColor: AuthManager.shared.authedUser?.profileColor ?? .teal),
                                                TabBarItem(id: .manga,
                                                           label: "Manga",
                                                           selectedColor: AuthManager.shared.authedUser?.profileColor ?? .teal)]
    }
}
