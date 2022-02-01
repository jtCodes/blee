//
//  MediaListView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI

struct MediaListView: View {
    @ObservedObject var viewModel: MediaListViewModel = MediaListViewModel()
    
    var body: some View {
        List() {
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
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
