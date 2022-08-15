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
    @StateObject var textObserver = TextFieldObserver(delay: 0.5)
    @State var selectedMediaTypeTabItemIndex: Int = 0
    @State var selectedMediaList: MediaListPickerItem
    @State var isSearchAnilist: Bool = false
    @State var isSearchVisible: Bool = false

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
        if (!textObserver.searchText.isEmpty) {
            if let titleSearchString = mediaRowViewModel.mediaListEntry.media?.getTitleSearchString() {
                shouldInclude = titleSearchString.score(word: textObserver.searchText, fuzziness: 0.5) > 0.3
            }
        } else if (isSearchVisible) {
            shouldInclude = false
        }
        
        return shouldInclude
    }
    
    func getMediaRows() -> [MediaRowViewModel] {
        if (!isSearchAnilist) {
            return mediaTrackingEntryStore.getMediaRowViewModelCollection()
                .filter { isIncludedByFilter(mediaRowViewModel: $0) }
        }
        
        return viewModel.rows
    }
    
    func searchAnilist(val: String) {
        if (!val.isEmpty) {
            AnilistNetworkClient.shared.searchAnilistAnime(keywords: val,
                                                           mediaType: viewModel.selectedMediaType) { resp in
                if let resp = resp {
                    self.viewModel.rows =  resp.map { (medium: SearchMediaQuery.Data.Page.Medium?) -> MediaRowViewModel in
                        let media = Media(mediaDetails: medium!.fragments.mediaDetails)
                        let mediaTrackingEntry =  MediaTrackingEntry(mediaId: media.id,
                                                                     mediaType: media.type == .anime ? .anime : .manga)
                        mediaTrackingEntry.media = media
                        return MediaRowViewModel(media: media,
                                                 mediaListEntry: mediaTrackingEntry)
                    }
                }
            }
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
            HStack() {
                TabBarView<MediaType>(tabItems: viewModel.tabBarItems,
                                      width: 170,
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
               
                HoverableButtonView(isSelected: $isSearchVisible,
                                    iconName: "magnifyingglass",
                                    helperText: "Search your list or Anilist")
                .onTapGesture {
                    isSearchVisible.toggle()
                }
            }
            .padding(.leading,5)
            .padding(.trailing, 5)
            if (isSearchVisible) {
                SearchBarView(searchText: $textObserver.searchText,
                              isSearchAnilist: $isSearchAnilist)
                .padding(.leading, 5)
                .padding(.trailing, 5)
                .padding(.top, 5)
            }
            ScrollView() {
                LazyVStack() {
                    ForEach(getMediaRows() , id: \.self) { viewModel in
                        MediaRowView(viewModel: viewModel)
                            .environmentObject(viewModel.mediaListEntry)
                        Divider()
                    }
                }
                .padding(5)
            }
        }
        .onAppear() {
            fetchFromServer()
        }
        .onReceive(textObserver.$debouncedText) { (val) in
            if (isSearchVisible && isSearchAnilist) {
                searchAnilist(val: val)
            }
        }
        .onChange(of: isSearchVisible) { newValue in
            if (newValue == false) {
                textObserver.searchText = ""
                isSearchAnilist = false
                fetchFromServer()
            }
        }
        .onChange(of: viewModel.selectedMediaType) { newValue in
            if (isSearchVisible && isSearchAnilist) {
                searchAnilist(val: textObserver.searchText)
            }
        }
        .onChange(of: isSearchAnilist) { newValue in
            if (isSearchAnilist == true) {
                searchAnilist(val: textObserver.searchText)
            } else {
                viewModel.rows = []
            }
        }
    }
}

//struct MediaListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MediaListView()
//    }
//}
