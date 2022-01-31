//
//  SearchResultView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI
import Kingfisher

struct SearchResultView: View {
    var body: some View {
        List() {
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
            SearchResultRowView()
        }
    }
}

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView()
    }
}
