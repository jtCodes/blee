//
//  MediaListView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI

struct MediaListView: View {
    @EnvironmentObject var mediaTrackingEntryStore: MediaTrackingEntryStore
    
    var body: some View {
        List() {
            ForEach(mediaTrackingEntryStore.mediaRowViewModelCollection, id: \.self) { viewModel in
                MediaRowView(viewModel: viewModel)
                    .environmentObject(mediaTrackingEntryStore
                                        .mediaTrackingEntryByMediaId[viewModel.mediaListEntry.fragments.mediaListEntry.id]!)
            }
        }
        .onAppear() {
            if let viewer = AuthManager.shared.authedUser {
                mediaTrackingEntryStore.fetchMediaCollection(user: viewer, type: .manga)
            }
        }
    }
}

struct MediaListView_Previews: PreviewProvider {
    static var previews: some View {
        MediaListView()
    }
}
