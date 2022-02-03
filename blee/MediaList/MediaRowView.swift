//
//  MediaListRowView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI
import Kingfisher

struct MediaRowView: View {
    @ObservedObject var viewModel: MediaRowViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                KFImage(URL(string: viewModel.media.coverImage.extraLarge!)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 60)
                    .cornerRadius(5)
                Text(viewModel.media.title.userPreferred)
                Spacer()
            }
            .contentShape(Rectangle())
            .onTapGesture {
                viewModel.isExpanded.toggle()
            }
            if viewModel.isExpanded {
                Text("Edit")
                MediaTrackingEditView()
                    .background(.quaternary)
                    .cornerRadius(5)
                    .frame(maxWidth: .infinity)
                    .padding(10)
            }
        }
        .frame(height: viewModel.isExpanded ? 250 : 100)
    }
}
//
//struct MediaListRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MediaRowView()
//    }
//}
