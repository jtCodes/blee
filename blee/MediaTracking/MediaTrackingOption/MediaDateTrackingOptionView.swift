//
//  MediaDateTrackingOptionView.swift
//  blee
//
//  Created by J Tan on 2/3/22.
//

import SwiftUI

struct MediaDateTrackingOptionView: View {
    var label: String
    var onAddDeleteButtonClick: (_ isAdd: Bool) -> Void
    @Binding var date: Date
    @Binding var isAddDate: Bool
    
    var body: some View {
        MediaTrackingOptionView(title: label) {
            HStack() {
                if (isAddDate) {
                    Button("X") {
                        onAddDeleteButtonClick(false)
                    }
                    .frame(width: 25)
                    .background(.red)
                    .cornerRadius(5)
                    DatePicker("",
                               selection: $date,
                               in: ...Date(),
                               displayedComponents: .date)
                        .datePickerStyle(.field)
                        .padding(.leading, -15)
                }
                else {
                    Button("+") {
                        onAddDeleteButtonClick(true)
                    }
                    .frame(width: 25)
                    .background(.green)
                    .cornerRadius(5)
                    Spacer()
                }
            }
            .frame(width: 100, height: 25)
        }
    }
}

struct MediaDateTrackingOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MediaDateTrackingOptionView(label: "Start Date",
                                    onAddDeleteButtonClick: {_ in },
                                    date: .constant(Date()),
                                    isAddDate: .constant(false))
    }
}
