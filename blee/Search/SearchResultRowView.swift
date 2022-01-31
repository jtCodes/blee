//
//  SearchResultRowView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI
import Kingfisher

struct SearchResultRowView: View {
    var media: Media = Media().mockMedia()
    @State var isExpanded: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                KFImage(URL(string: media.coverImage.extraLarge!)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 60)
                    .cornerRadius(5)
                Text(media.title.userPreferred)
                Spacer()
                Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                    .onTapGesture {
                        isExpanded.toggle()
                    }
                    .frame(width: 30, alignment: .trailing)
            }
            if (isExpanded == true) {
                MediaTrackingEditView()
                    .background(.quaternary)
                    .cornerRadius(5)
                    .frame(maxWidth: .infinity)
                    .padding(10)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct SearchResultRowView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultRowView()
    }
}
