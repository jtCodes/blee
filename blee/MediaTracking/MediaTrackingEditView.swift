//
//  MediaTrackingEditView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaTrackingEditView: View {
    var viewModel: MediaTrackingEditViewModel = MediaTrackingEditViewModel()
    @EnvironmentObject var mediaTrackingEntry: MediaTrackingEntryModel
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
                    StepperField(title: "", value: $mediaTrackingEntry.progress)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("V. Progress")
                    StepperField(title: "", value: $sleepAmount)
                }
                Spacer()
            }
            HStack() {
                VStack(alignment: .leading) {
                    Text("Start Date")
                    DatePicker(selection: $date, in: ...Date(),
                               displayedComponents: .date) {
                    }
                }
                .frame(width: 90)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Finish Date")
                    DatePicker(selection: $date, in: ...Date(),
                               displayedComponents: .date) {
                    }
                }
                .frame(width: 90)
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
            if (mediaTrackingEntry.isEdited) {
                HStack() {
                    Spacer()
                    Button("Save") {
                        AnilistNetworkClient.shared.saveMediaListEntry(mediaId: mediaTrackingEntry.mediaId,
                                                                       status: mediaTrackingEntry.status,
                                                                       score: 0,
                                                                       progress: mediaTrackingEntry.progress,
                                                                       progressVolumes: 0,
                                                                       isRepeat: 0,
                                                                       isPrivate: nil,
                                                                       notes: nil,
                                                                       customLists: nil,
                                                                       hiddenFromStatusLists: nil,
                                                                       startedAt: nil,
                                                                       completedAt: nil) { success in
                            if (success == true) {
                                viewModel.initialEntry = mediaTrackingEntry.copy(with: nil) as? MediaTrackingEntryModel
                                mediaTrackingEntry.isEdited = false
                            }
                        }
                    }
                    
                    .background(.blue)
                    .cornerRadius(5)
                    Button("Discard Edit") {
                        mediaTrackingEntry.status = viewModel.initialEntry?.status
                        mediaTrackingEntry.isEdited = false
                    }
                    .background(.red)
                    .cornerRadius(5)
                }
            }
            
        }
        .padding(10)
        .onAppear() {
            print("appear")
            viewModel.initialEntry = mediaTrackingEntry.copy(with: nil) as? MediaTrackingEntryModel
        }
    }
}

struct StepperField: View {
    let title: LocalizedStringKey
    let maxValue: Int = 99999
    @Binding var value: Int
    var alignToControl: Bool = false
    
    var body: some View {
        HStack {
            TextField("Enter Value", value: $value, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(minWidth: 15, maxWidth: 60)
                .alignmentGuide(.controlAlignment) { $0[.leading] }
            Stepper(title, value: $value, in: 0...maxValue)
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
//    static let mediaTrackingEntry: MediaTrackingEntry = MediaTrackingEntry(initialEntry: MediaTrackingEntryModel(mediaId: 1),
//                                                                           currentEntry: MediaTrackingEntryModel(mediaId: 3))
//    static var previews: some View {
//        MediaTrackingEditView()
//            .frame(width: 400)
//            .environmentObject(mediaTrackingEntry)
//    }
//}
