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
                                                          selectedColor: .red),
                                               TabBarItem(id: .manga,
                                                          label: "Manga",
                                                          selectedColor: .blue)]
    @Published var selectedMediaType: MediaType = .anime
}
