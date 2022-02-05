//
//  MediaTrackingEditView.swift
//  blee
//
//  Created by J Tan on 1/29/22.
//

import SwiftUI

struct MediaTrackingEditView: View {
    var viewModel: MediaTrackingEditViewModel
    @EnvironmentObject var mediaTrackingEntry: MediaTrackingEntry
    @EnvironmentObject var mediaTrackingStore: MediaTrackingEntryStore
    @State private var isStartDateAdded: Bool = false
    @State private var isCompleteDateAdded: Bool = false
    
    func onStartDateAddButtonClick(_ isAdd: Bool) {
        isStartDateAdded = isAdd
        mediaTrackingEntry.isStartDateExist = isAdd
    }
    
    func onCompleteDateAddButtonClick(_ isAdd: Bool) {
        isCompleteDateAdded = isAdd
        mediaTrackingEntry.isCompleteDateExist = isAdd
    }
    
    var body: some View {
        VStack() {
            if (mediaTrackingStore.isSavingToServer) {
                ProgressView()
            } else {
                HStack() {
                    MediaStatusTrackingOptionView()
                        .frame(width: 140)
                    Spacer()
                    MediaTrackingOptionView(title: mediaTrackingEntry.mediaType == .anime ?
                                            "Episode" : "Chapter") {
                        StepperField(title: "", value: $mediaTrackingEntry.progress)
                    }
                    if mediaTrackingEntry.mediaType == .manga  {
                        Spacer()
                        MediaTrackingOptionView(title: "Volume") {
                            StepperField(title: "", value: $mediaTrackingEntry.progressVolume)
                        }
                    }
                    Spacer()
                }
                HStack() {
                    MediaDateTrackingOptionView(label: "Start Date",
                                                onAddDeleteButtonClick: onStartDateAddButtonClick,
                                                date: $mediaTrackingEntry.startDate,
                                                isAddDate: $isStartDateAdded)
                    Spacer()
                    MediaDateTrackingOptionView(label: "End Date",
                                                onAddDeleteButtonClick: onCompleteDateAddButtonClick,
                                                date: $mediaTrackingEntry.completeDate,
                                                isAddDate: $isCompleteDateAdded)
                    Spacer()
                    MediaTrackingOptionView(title: "Score") {
                        StepperField(title: "", value: $mediaTrackingEntry.score)
                    }
                    Spacer()
                    MediaTrackingOptionView(title: "Repeats") {
                        StepperField(title: "", value: $mediaTrackingEntry.repeatCount)
                    }
                }
                HStack() {
                    TextField("Notes", text: $mediaTrackingEntry.note)
                    if (mediaTrackingEntry.isEdited) {
                        Button("Save") {
                            mediaTrackingStore.isSavingToServer = true
                            AnilistNetworkClient.shared.saveMediaListEntry(mediaId: mediaTrackingEntry.mediaId,
                                                                           status: mediaTrackingEntry.status,
                                                                           score: mediaTrackingEntry.score,
                                                                           progress: mediaTrackingEntry.progress,
                                                                           progressVolumes: mediaTrackingEntry.progressVolume,
                                                                           repeatCount: mediaTrackingEntry.repeatCount,
                                                                           isPrivate: nil,
                                                                           notes: mediaTrackingEntry.note,
                                                                           customLists: nil,
                                                                           hiddenFromStatusLists: nil,
                                                                           startedAt: mediaTrackingEntry.isStartDateExist ?
                                                                           mediaTrackingEntry.startDate.toFuzzyDateInput() : nil,
                                                                           completedAt: mediaTrackingEntry.isCompleteDateExist ?
                                                                           mediaTrackingEntry.completeDate.toFuzzyDateInput() : nil) { success in
                                if (success == true) {
                                    viewModel.initialEntry = mediaTrackingEntry.copy(with: nil) as? MediaTrackingEntry
                                    mediaTrackingEntry.isEdited = false
                                }
                                mediaTrackingStore.isSavingToServer = false
                            }
                        }
                        
                        .background(.blue)
                        .cornerRadius(5)
                        Button("Discard Edit") {
                            DispatchQueue.main.async {
                                NSApp.keyWindow?.makeFirstResponder(nil)
                                mediaTrackingEntry.reset(initialEntry: viewModel.initialEntry!)
                                mediaTrackingEntry.progress = viewModel.initialEntry!.progress
                                mediaTrackingEntry.isEdited = false
                                isStartDateAdded = mediaTrackingEntry.isStartDateExist
                                isCompleteDateAdded = mediaTrackingEntry.isCompleteDateExist
                            }
                        }
                        .background(.red)
                        .cornerRadius(5)
                    }
                }
            }
        }
        .padding(10)
        .onAppear() {
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
        let binding = Binding<T>(get: {
            self.value
        }, set: {
            self.value = $0
        })
        
        HStack {
            TextField("Enter Value", value: binding, formatter: NumberFormatter())
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(minWidth: 15, maxWidth: 60)
                .alignmentGuide(.controlAlignment) { $0[.leading] }
                .onSubmit {
                    DispatchQueue.main.async {
                        NSApp.keyWindow?.makeFirstResponder(nil)
                    }
                }
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
    static let mediaTrackingEntry: MediaTrackingEntry = MediaTrackingEntry(mediaId: 1,
                                                                           mediaType: .anime)
    
    static var previews: some View {
        MediaTrackingEditView(viewModel: MediaTrackingEditViewModel())
            .frame(width: 400)
            .environmentObject(mediaTrackingEntry)
    }
}
