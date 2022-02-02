//
//  MediaListView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI

struct MediaListView: View {
    @ObservedObject var viewModel: MediaListViewModel = MediaListViewModel()
    @EnvironmentObject var mediaTrackingEntryStore: MediaTrackingEntryStore
    
    func fetchFromServer() {
        if let viewer = AuthManager.shared.authedUser {
            mediaTrackingEntryStore.fetchMediaCollection(user: viewer,
                                                         type: .manga,
                                                         shouldFetchFromCache: false)
        }
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Button("Refresh") {
                fetchFromServer()
            }
            TabBarView<MediaType>(tabItems: [TabBarItem(id: .anime,
                                                        label: "Anime",
                                                        selectedColor: .red),
                                             TabBarItem(id: .manga,
                                                        label: "Manga",
                                                        selectedColor: .blue)],
                                  width: 320)
            List() {
                ForEach(mediaTrackingEntryStore.mediaRowViewModelCollection, id: \.self) { viewModel in
                    MediaRowView(viewModel: viewModel)
                        .environmentObject(mediaTrackingEntryStore
                                            .mediaTrackingEntryByMediaId[viewModel.mediaListEntry.fragments.mediaListEntry.id]!)
                }
            }
        }
        .onAppear() {
            fetchFromServer()
        }
        
    }
}

struct MediaListView_Previews: PreviewProvider {
    static var previews: some View {
        MediaListView()
    }
}
