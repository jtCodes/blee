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
    let mediaList: [MediaListPickerItem] = [MediaListPickerItem(id: "all",
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
    
    init(viewModel: MediaListViewModel) {
        self.viewModel = viewModel
        _selectedMediaList = State(initialValue: mediaList[0])
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
            MediaListPickerView(mediaList: mediaList,
                                selectedList: $selectedMediaList,
                                onMediaListSelect: onMediaListSelect)
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
                LazyVStack() {
                    if (viewModel.selectedMediaType == .anime) {
                        ForEach(mediaTrackingEntryStore.animeMediaRowViewModelCollection, id: \.self) { viewModel in
                            MediaRowView(viewModel: viewModel)
                                .environmentObject(viewModel.mediaListEntry)
                            Divider()
                        }
                    } else {
                        ForEach(mediaTrackingEntryStore.mangaMediaRowViewModelCollection, id: \.self) { viewModel in
                            MediaRowView(viewModel: viewModel)
                                .environmentObject(viewModel.mediaListEntry)
                            Divider()
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
