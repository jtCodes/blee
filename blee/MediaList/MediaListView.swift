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
    @State var selectedMediaList: MediaListPickerItem
    
    init(viewModel: MediaListViewModel) {
        self.viewModel = viewModel
        _selectedMediaList = State(initialValue: viewModel.mediaListPickerItems[1])
    }
    
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
    
    func isIncludedByFilter(mediaRowViewModel: MediaRowViewModel) -> Bool {
        if (selectedMediaList.isMediaListStatus) {
            if let status = selectedMediaList.toMediaListStatus() {
                return mediaRowViewModel.mediaListEntry.status == status
            } else {
                return false
            }
        }
        return true
    }
    
    func onSelectedTabItemIndexChange(newIndex: Int) {
        let newSelectedMediaType = viewModel.tabBarItems[newIndex].id
        
        if (newSelectedMediaType != viewModel.selectedMediaType) {
            viewModel.selectedMediaType = newSelectedMediaType
            fetchFromCacheIfPossible()
        }
    }
    
    func onMediaListSelect(_ mediaListPicketItem: MediaListPickerItem) {
        self.selectedMediaList = mediaListPicketItem
    }
    
    var body: some View {
        VStack(alignment: .center) {
            HStack() {
                MediaListPickerView(mediaList: viewModel.mediaListPickerItems,
                                    selectedList: $selectedMediaList,
                                    onMediaListSelect: onMediaListSelect)
                    .frame(width: 140)
                Spacer()
                Button {
                    fetchFromServer()
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
            }
            .padding(5)
            TabBarView<MediaType>(tabItems: viewModel.tabBarItems,
                                  width: 380,
                                  onSelectedTabItemIndexChange: onSelectedTabItemIndexChange,
                                  selectedTabIndex: $selectedMediaTypeTabItemIndex)
            ScrollView() {
                LazyVStack() {
                    ForEach(mediaTrackingEntryStore.getMediaRowViewModelCollection() , id: \.self) { viewModel in
                        Group {
                            if (isIncludedByFilter(mediaRowViewModel: viewModel)){
                                MediaRowView(viewModel: viewModel)
                                    .environmentObject(viewModel.mediaListEntry)
                                Divider()
                            }
                        }
                    }
                }
                .padding(5)
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
