//
//  MediaListRowView.swift
//  blee
//
//  Created by J Tan on 1/31/22.
//

import SwiftUI
import Kingfisher

struct MediaRowView: View {
    let mediaStatusColorMap: [MediaListStatus: Color] = [.current: Color(hex: "#2db039"),
                                                         .repeating: Color(hex: "#2db039"),
                                                         .completed: Color(hex:"#26448f"),
                                                         .paused: Color(hex:"#f9d457"),
                                                         .dropped: Color(hex:"#a12f31"),
                                                         .planning: Color(hex:"#b5dfbf")]
    @ObservedObject var viewModel: MediaRowViewModel
    @EnvironmentObject var mediaListEntry: MediaTrackingEntry
    @State var isHovered: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                KFImage(URL(string: viewModel.media.coverImage.extraLarge!)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 70)
                    .cornerRadius(5)
                Spacer()
                VStack(alignment: .leading) {
                    Text(viewModel.media.title.userPreferred)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    Spacer()
                    HStack() {
                        MediaRowInfoItemView(label: mediaListEntry.status != nil ?
                                             mediaListEntry.getStatusLabel() : "Not in List",
                                             sfSymbolName: "circle.fill",
                                             helpText: "Status")
                        .if(mediaListEntry.status != nil) { view in
                            view.foregroundColor(mediaStatusColorMap[mediaListEntry.status!] != nil ?
                                                 mediaStatusColorMap[mediaListEntry.status!] : Color(hex:"#c3c3c3"))
                        }
                        .if(mediaListEntry.status == nil) { view in
                            view.foregroundColor(Color(hex:"#c3c3c3"))
                        }
                        
                        if (mediaListEntry.score > 0) {
                            MediaRowInfoItemView(label: String(mediaListEntry.score),
                                                 sfSymbolName: "star.fill",
                                                 helpText: "Score")
                        }
                        if (mediaListEntry.progress > 0) {
                            MediaRowInfoItemView(label: String(mediaListEntry.progress),
                                                 sfSymbolName: "rectangle.stack.badge.play",
                                                 helpText: "Progress")
                        }
                        
                        if (mediaListEntry.mediaType == .manga && mediaListEntry.progressVolume > 0) {
                            MediaRowInfoItemView(label: String(mediaListEntry.progressVolume),
                                                 sfSymbolName: "books.vertical.fill",
                                                 helpText: "Volume Progress")
                        }
                        
                        if (mediaListEntry.repeatCount > 0) {
                            MediaRowInfoItemView(label: String(mediaListEntry.repeatCount),
                                                 sfSymbolName: "arrow.clockwise",
                                                 helpText: "Repeat")
                        }
                        
                        if (!mediaListEntry.note.isEmpty) {
                            MediaRowInfoItemView(label: "",
                                                 sfSymbolName: "text.bubble",
                                                 helpText: "Note")
                        }
                        
                        Spacer()
                    }
                    Spacer()
                    HStack() {
                        if let format = mediaListEntry.media?.format {
                            Text(format)
                                .font(.system(size: 11))
                                .cornerRadius(5)
                                .padding(.leading, 2.5)
                                .padding(.trailing, 2.5)
                                .padding(.top, 1.5)
                                .padding(.bottom, 1.5)
                                .overlay(RoundedRectangle(cornerRadius: 5)
                                            .stroke(.white.opacity(0.6), lineWidth: 1))
                                .opacity(0.7)
                        }
                        if let seasonYear = mediaListEntry.media?.seasonYear {
                            if (seasonYear > 0) {
                                Text(String(seasonYear))
                                    .font(.system(size: 11))
                                    .cornerRadius(5)
                                    .padding(.leading, 2.5)
                                    .padding(.trailing, 2.5)
                                    .padding(.top, 1.5)
                                    .padding(.bottom, 1.5)
                                    .overlay(RoundedRectangle(cornerRadius: 5)
                                        .stroke(.white.opacity(0.6), lineWidth: 1))
                                    .opacity(0.7)
                            }
                        }
                        Spacer()
                        if (mediaListEntry.isPrivate) {
                            MediaRowInfoItemView(label: "",
                                                 sfSymbolName: "eye.slash",
                                                 helpText: "Private entry")
                                .foregroundColor(.purple.opacity(0.7))
                        }
                        
                        if (mediaListEntry.media?.anilistStatus == .releasing) {
                            MediaRowInfoItemView(label: "",
                                                 sfSymbolName: "circle.inset.filled",
                                                 helpText: "Releasing")
                                .foregroundColor(.green)
                                .font(.footnote)
                        } else if (mediaListEntry.media?.anilistStatus == .notYetReleased) {
                            MediaRowInfoItemView(label: "",
                                                 sfSymbolName: "circle.inset.filled",
                                                 helpText: "Not Yet Released")
                                .foregroundColor(.red)
                                .font(.footnote)
                        }
                    }
                    .padding(2.5)
                }
                Spacer()
            }
            .cornerRadius(5)
            .contentShape(Rectangle())
            .onTapGesture {
//                withAnimation(Animation.spring().speed(2)) {
                    viewModel.isExpanded.toggle()
//                }
            }
            if viewModel.isExpanded {
                MediaTrackingEditView(viewModel: viewModel.mediaTrackingEditViewModel)
                    .background(.quaternary)
                    .cornerRadius(5)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}

struct MediaListRowView_Previews: PreviewProvider {
    static let myEnvObject = MediaTrackingEntry(mediaId: 1, mediaType: .anime)
    static var previews: some View {
        MediaRowView(viewModel: MediaRowViewModel(media: Media().mockMedia(),
                                                  mediaListEntry: MediaTrackingEntry(mediaId: 1, mediaType: .anime)))
            .environmentObject(myEnvObject)
            .frame(width: 300, height: 60)
    }
}
