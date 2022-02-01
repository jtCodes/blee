//
//  MediaListRowView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI
import Kingfisher

struct MediaRowView: View {
    var initialMediaTrackingEntry: MediaTrackingEntry
    var viewModel: MediaRowViewModel
    @State var isExpanded: Bool = false
    
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
                Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                    .onTapGesture {
                        isExpanded.toggle()
                    }
                    .frame(width: 30, alignment: .trailing)
            }
            if (isExpanded == true) {
                MediaTrackingEditView(initialTrackingEntry: initialMediaTrackingEntry)
                    .background(.quaternary)
                    .cornerRadius(5)
                    .frame(maxWidth: .infinity)
                    .padding(10)
            }
        }
        .frame(maxWidth: .infinity)
    }
}
//
//struct MediaListRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MediaRowView()
//    }
//}
