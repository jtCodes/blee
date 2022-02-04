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
    @State var isHovered: Bool = false
    
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
            .background(isHovered ? .blue.opacity(0.6) : .clear)
            .cornerRadius(5)
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(Animation.spring().speed(2)) {
                    viewModel.isExpanded.toggle()
                }
            }
            if viewModel.isExpanded {
                MediaTrackingEditView()
                    .background(.quaternary)
                    .cornerRadius(5)
                    .frame(maxWidth: .infinity)
                    .padding(5)
            }
        }
    }
}
//
//struct MediaListRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MediaRowView()
//    }
//}
