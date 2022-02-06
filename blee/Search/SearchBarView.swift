//
//  SearchBarView.swift
//
//
//  based on https://github.com/UPetersen/SwiftUI-SearchBar/blob/master/SearchBar/ContentView.swift
//

import SwiftUI
import OmenTextField

enum FocusField: Hashable {
    case field
}

struct SearchBarView: View {
    @Binding var searchText: String
    @State private var isEditing: Bool = false
    @State var focus: Bool = false
    @State var frontReturnKeyType = OmenTextField.ReturnKeyType.next
    
    enum Focus {
        case front, back
    }
    
    var onCommit: () -> Void = { NSApp.keyWindow?.makeFirstResponder(nil) }
    
    var body: some View {
        
        HStack {
            Image(systemName: "magnifyingglass")
            ZStack (alignment: .leading) {
                OmenTextField(
                    "Search",
                    text: $searchText,
                    isFocused: $focus,
                    returnKeyType: frontReturnKeyType,
                    onCommit: {
                        onCommit()
                    }
                )
            }
            // Clear button
            Button(action: {
                self.searchText = ""
                NSApp.keyWindow?.makeFirstResponder(nil)
            }) {
                Image(systemName: "xmark")
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.leading, 5)
        .padding(.trailing, 5)
        .padding(.top, 1.5)
        .padding(.bottom, 1.5)
        .background(.quaternary)
        .cornerRadius(5)
        .onAppear() {
            DispatchQueue.main.async {
                NSApp.keyWindow?.makeFirstResponder(nil)
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant("fd"))
    }
}
