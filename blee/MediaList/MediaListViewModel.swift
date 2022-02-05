//
//  MediaListViewModel.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import Foundation

class MediaListViewModel: ObservableObject {
    let mediaListPickerItems: [MediaListPickerItem] = [MediaListPickerItem(id: "all",
                                                                           label: "All",
                                                                           isMediaListStatus: false,
                                                                           isCustomList: false),
                                                       MediaListPickerItem(id: MediaListStatus.current.rawValue,
                                                                           label: MediaListStatus.current.rawValue,
                                                                           isMediaListStatus: true,
                                                                           isCustomList: false),
                                                       MediaListPickerItem(id: MediaListStatus.planning.rawValue,
                                                                           label: MediaListStatus.planning.rawValue,
                                                                           isMediaListStatus: true,
                                                                           isCustomList: false),
                                                       MediaListPickerItem(id:MediaListStatus.completed.rawValue,
                                                                           label: MediaListStatus.completed.rawValue,
                                                                           isMediaListStatus: true,
                                                                           isCustomList: false),
                                                       MediaListPickerItem(id: MediaListStatus.repeating.rawValue,
                                                                           label: MediaListStatus.repeating.rawValue,
                                                                           isMediaListStatus: true,
                                                                           isCustomList: false),
                                                       MediaListPickerItem(id: MediaListStatus.paused.rawValue,
                                                                           label:MediaListStatus.paused.rawValue,
                                                                           isMediaListStatus: true,
                                                                           isCustomList: false),
                                                       MediaListPickerItem(id: MediaListStatus.dropped.rawValue,
                                                                           label: MediaListStatus.dropped.rawValue,
                                                                           isMediaListStatus: true,
                                                                           isCustomList: false)]
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
