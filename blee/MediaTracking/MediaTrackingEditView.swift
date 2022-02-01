//
//  MediaTrackingEditView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaTrackingEditView: View {
    var initialTrackingEntry: MediaTrackingEntry
    @EnvironmentObject var mediaTrackingEntry: MediaTrackingEntry
    @State private var date = Date()
    @State private var sleepAmount = 8
    
    var body: some View {
        VStack() {
            HStack() {
                MediaStatusTrackingOptionView()
                    .frame(width: 100)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Select a date")
                    DatePicker(selection: $date, in: ...Date(),
                               displayedComponents: .date) {
                    }
                }
            }
            .padding(5)
            HStack() {
                VStack(alignment: .leading) {
                    Text("Score")
                    StepperField(title: "", value: $sleepAmount)
                }
            }
            .padding(5)
            
            if (mediaTrackingEntry.isEdited) {
                Button("Save") {
                    AnilistNetworkClient.shared.saveMediaListEntry(mediaId: mediaTrackingEntry.mediaId,
                                                                   status: mediaTrackingEntry.status,
                                                                   score: 0,
                                                                   progress: 0,
                                                                   progressVolumes: 0,
                                                                   isRepeat: 0,
                                                                   isPrivate: nil,
                                                                   notes: nil,
                                                                   customLists: nil,
                                                                   hiddenFromStatusLists: nil,
                                                                   startedAt: nil,
                                                                   completedAt: nil) { success in
                        
                    }
                }
                Button("Discard Changes") {
                    mediaTrackingEntry.status = initialTrackingEntry.status
                    mediaTrackingEntry.isEdited = false
                }
            }
        }
        .onAppear() {
        }
    }
}

struct StepperField: View {
    let title: LocalizedStringKey
    @Binding var value: Int
    var alignToControl: Bool = false

    var body: some View {
        HStack {
            TextField("Enter Value", value: $value, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(minWidth: 15, maxWidth: 60)
                .alignmentGuide(.controlAlignment) { $0[.leading] }
            Stepper(title, value: $value, in: 1...100)
                .labelsHidden()
        }
        .alignmentGuide(.leading) {
            self.alignToControl
                ? $0[.controlAlignment]
                : $0[.leading]
        }
    }
}

extension HorizontalAlignment {
    private enum ControlAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[HorizontalAlignment.center]
        }
    }
    static let controlAlignment = HorizontalAlignment(ControlAlignment.self)
}

//struct MediaTrackingEditView_Previews: PreviewProvider {
//    static var previews: some View {
//        MediaTrackingEditView()
//    }
//}
