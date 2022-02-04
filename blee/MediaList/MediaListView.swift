//
//  MediaListView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI

struct MediaListView: View {
    @ObservedObject var viewModel: MediaListViewModel
    @EnvironmentObject var mediaTrackingEntryStore: MediaTrackingEntryStore
    @State var selectedMediaTypeTabItemIndex: Int = 0
    
    func fetchFromServer() {
        if let viewer = AuthManager.shared.authedUser {
            mediaTrackingEntryStore.fetchMediaCollection(user: viewer,
                                                         type: viewModel.selectedMediaType,
                                                         shouldFetchFromCache: false)
        }
    }
    
    func fetchFromCacheIfPossible() {
        if let viewer = AuthManager.shared.authedUser {
            mediaTrackingEntryStore.fetchMediaCollection(user: viewer,
                                                         type: viewModel.selectedMediaType,
                                                         shouldFetchFromCache: true)
        }
    }
    
    func onSelectedTabItemIndexChange(newIndex: Int) {
        let newSelectedMediaType = viewModel.tabBarItems[newIndex].id
        
        if (newSelectedMediaType != viewModel.selectedMediaType) {
            viewModel.selectedMediaType = newSelectedMediaType
            fetchFromCacheIfPossible()
        }
    }
    
    var body: some View {
        VStack(alignment: .center) {
            HStack() {
                Button {
                    fetchFromServer()
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
                .padding(.leading, 5)
                Spacer()
            }
            TabBarView<MediaType>(tabItems: viewModel.tabBarItems,
                                  width: 380,
                                  onSelectedTabItemIndexChange: onSelectedTabItemIndexChange,
                                  selectedTabIndex: $selectedMediaTypeTabItemIndex)
            ScrollView() {
                VStack() {
                    ForEach(mediaTrackingEntryStore.mediaRowViewModelCollection, id: \.self) { viewModel in
                        MediaRowView(viewModel: viewModel)
                            .environmentObject(viewModel.mediaListEntry)
                        Divider()
                    }
                }
                .padding(10)
            }
        }
        .onAppear() {
            fetchFromServer()
        }
        
    }
}

//struct MediaListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MediaListView()
//    }
//}

extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}
