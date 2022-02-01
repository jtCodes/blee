//
//  MediaListView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI

struct MediaListView: View {
    @ObservedObject var viewModel: MediaListViewModel = MediaListViewModel()
    
    init() {
        if let viewer = AuthManager.shared.authedUser {
            viewModel.fetchMediaCollection(user: viewer, type: .manga)
        }
    }
    
    var body: some View {
        List() {
            ForEach(viewModel.mediaRowViewModelCollection, id: \.self) { viewModel in
                MediaRowView(viewModel: viewModel)
            }
        }
        .onAppear() {
            print("appear")
        }
    }
}

struct MediaListView_Previews: PreviewProvider {
    static var previews: some View {
        MediaListView()
    }
}
