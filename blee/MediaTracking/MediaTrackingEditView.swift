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
                    .frame(width: 140)
                Spacer()
                VStack(alignment: .leading) {
                    Text("C. Progress")
                    StepperField(title: "", value: $sleepAmount)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("V. Progress")
                    StepperField(title: "", value: $sleepAmount)
                }
                Spacer()
            }
            .padding(5)
            HStack() {
                VStack(alignment: .leading) {
                    Text("Start Date")
                    DatePicker(selection: $date, in: ...Date(),
                               displayedComponents: .date) {
                    }
                }
                .frame(width: 140)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Score")
                    StepperField(title: "", value: $sleepAmount)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Rereads")
                    StepperField(title: "", value: $sleepAmount)
                }
                Spacer()
            }
            .padding(5)
            HStack() {
                VStack(alignment: .leading) {
                    Text("Finish Date")
                    DatePicker(selection: $date, in: ...Date(),
                               displayedComponents: .date) {
                    }
                }
                .frame(width: 140)
                Spacer()
                if (mediaTrackingEntry.currentEntry.isEdited) {
                    HStack() {
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
                        
                        .background(.blue)
                        .cornerRadius(5)
                        Button("Discard Changes") {
                            mediaTrackingEntry.currentEntry.status = mediaTrackingEntry.initialEntry.status
                            mediaTrackingEntry.currentEntry.isEdited = false
                            mediaTrackingEntry.currentEntryUpdated()
                        }
                        .background(.red)
                        .cornerRadius(5)
                    }
                    .padding(.top, 20)
                }
            }
            .padding(5)
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

struct MediaTrackingEditView_Previews: PreviewProvider {
    static let mediaTrackingEntry: MediaTrackingEntry = MediaTrackingEntry(initialEntry: MediaTrackingEntryModel(mediaId: 1),
                                                                           currentEntry: MediaTrackingEntryModel(mediaId: 3))
    static var previews: some View {
        MediaTrackingEditView()
            .frame(width: 400)
            .environmentObject(mediaTrackingEntry)
    }
}
