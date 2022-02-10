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
    @State var searchText: String = ""
    
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
        var shouldInclude: Bool = true
        
        // media list
        if (selectedMediaList.isMediaListStatus) {
            if let status = selectedMediaList.toMediaListStatus() {
                shouldInclude = mediaRowViewModel.mediaListEntry.status == status
            } else {
                shouldInclude = false
            }
        }
        
        // search
        if (!searchText.isEmpty) {
            if let titleSearchString = mediaRowViewModel.mediaListEntry.media?.getTitleSearchString() {
                shouldInclude = titleSearchString.score(word: searchText, fuzziness: 0.5) > 0.3
            }
        }
        
        return shouldInclude
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
                TabBarView<MediaType>(tabItems: viewModel.tabBarItems,
                                      width: 200,
                                      onSelectedTabItemIndexChange: onSelectedTabItemIndexChange,
                                      selectedTabIndex: $selectedMediaTypeTabItemIndex)
                Spacer()
                MediaListPickerView(mediaList: viewModel.mediaListPickerItems,
                                    selectedList: $selectedMediaList,
                                    onMediaListSelect: onMediaListSelect)
                    .frame(width: 120)
                Spacer()
                RefreshButtonView()
                    .onTapGesture {
                        fetchFromServer()
                    }
            }
            .padding(.leading,5)
            .padding(.trailing, 5)
            SearchBarView(searchText: $searchText)
                .padding(.leading, 5)
                .padding(.trailing, 5)
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
