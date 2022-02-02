//
//  MediaTrackingEditView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaTrackingEditView: View {
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
            
            if (mediaTrackingEntry.currentEntry.isEdited) {
                Button("Save") {
                    AnilistNetworkClient.shared.saveMediaListEntry(mediaId: mediaTrackingEntry.currentEntry.mediaId,
                                                                   status: mediaTrackingEntry.currentEntry.status,
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
                        if (success == true) {
                            mediaTrackingEntry.initialEntry = mediaTrackingEntry.currentEntry.copy(with: nil) as! MediaTrackingEntryModel
                            mediaTrackingEntry.currentEntry.isEdited = false
                            mediaTrackingEntry.currentEntryUpdated()
                            mediaTrackingEntry.initialEntryUpdated()
                        }
                    }
                }
                Button("Discard Changes") {
                    mediaTrackingEntry.currentEntry.status = mediaTrackingEntry.initialEntry.status
                    mediaTrackingEntry.currentEntry.isEdited = false
                    mediaTrackingEntry.currentEntryUpdated()
                }
            }
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
