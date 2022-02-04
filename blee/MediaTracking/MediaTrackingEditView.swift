//
//  MediaTrackingEditView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaTrackingEditView: View {
    var viewModel: MediaTrackingEditViewModel = MediaTrackingEditViewModel()
    @EnvironmentObject var mediaTrackingEntry: MediaTrackingEntry
    @State private var isStartDateAdded: Bool = false
    @State private var isEndDateEdited: Bool = false
    @State private var sleepAmount = 8
    
    func onStartDateAddButtonClick(_ isAdd: Bool) {
        isStartDateAdded = isAdd
        mediaTrackingEntry.isStartDateExist = isAdd
    }
    
    var body: some View {
        VStack() {
            HStack() {
                MediaStatusTrackingOptionView()
                    .frame(width: 140)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Chapter")
                    StepperField(title: "", value: $mediaTrackingEntry.progress)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Volume")
                    StepperField(title: "", value: $sleepAmount)
                }
                Spacer()
            }
            HStack() {
                MediaDateTrackingOptionView(label: "Start Date",
                                            onAddDeleteButtonClick: onStartDateAddButtonClick,
                                            date: $mediaTrackingEntry.startDate,
                                            isAddDate: $isStartDateAdded)
                Spacer()
                MediaDateTrackingOptionView(label: "Finish Date",
                                            onAddDeleteButtonClick: onStartDateAddButtonClick,
                                            date: $mediaTrackingEntry.startDate,
                                            isAddDate: $isEndDateEdited)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Score")
                    StepperField(title: "", value: $mediaTrackingEntry.score)
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
                                                                       startedAt: mediaTrackingEntry.isStartDateExist ?
                                                                       mediaTrackingEntry.startDate.toFuzzyDateInput() : nil,
                                                                       completedAt: nil) { success in
                            if (success == true) {
                                viewModel.initialEntry = mediaTrackingEntry.copy(with: nil) as? MediaTrackingEntry
                                mediaTrackingEntry.isEdited = false
                            }
                        }
                    }
                    
                    .background(.blue)
                    .cornerRadius(5)
                    Button("Discard Edit") {
                        mediaTrackingEntry.reset(initialEntry: viewModel.initialEntry!)
                        mediaTrackingEntry.isEdited = false
                        isStartDateAdded = mediaTrackingEntry.isStartDateExist
                    }
                    .background(.red)
                    .cornerRadius(5)
                }
            }
            
        }
        .padding(10)
        .onAppear() {
            viewModel.initialEntry = mediaTrackingEntry.copy(with: nil) as? MediaTrackingEntry
            if let isStartDateExist = viewModel.initialEntry?.isStartDateExist {
                if (isStartDateExist) {
                    isStartDateAdded = true
                }
            }
        }
    }
}

struct StepperField<T: Strideable>: View {
    let title: LocalizedStringKey
    let maxValue: Int = 99999
    @Binding var value: T
    var alignToControl: Bool = false
    
    var body: some View {
        HStack {
            TextField("Enter Value", value: $value, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(minWidth: 15, maxWidth: 60)
                .alignmentGuide(.controlAlignment) { $0[.leading] }
            Stepper(title, value: $value)
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
    static let mediaTrackingEntry: MediaTrackingEntry = MediaTrackingEntry(mediaId: 1)
    static var previews: some View {
        MediaTrackingEditView()
            .frame(width: 400)
            .environmentObject(mediaTrackingEntry)
    }
}
