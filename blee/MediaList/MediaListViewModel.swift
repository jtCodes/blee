//
//  MediaListViewModel.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import Foundation

class MediaListViewModel: ObservableObject {
    var tabBarItems: [TabBarItem<MediaType>] = [TabBarItem(id: .anime,
                                                           label: "Anime",
                                                           selectedColor: .teal),
                                                TabBarItem(id: .manga,
                                                           label: "Manga",
                                                           selectedColor: .teal)]
    @Published var selectedMediaType: MediaType = .anime
}
