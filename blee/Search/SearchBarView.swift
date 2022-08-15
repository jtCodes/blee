//
//  SearchBarView.swift
//
//
//  based on https://github.com/UPetersen/SwiftUI-SearchBar/blob/master/SearchBar/ContentView.swift
//

import Combine
import SwiftUI
import OmenTextField

class TextFieldObserver : ObservableObject {
    @Published var debouncedText = ""
    @Published var searchText = ""
    
    init(delay: DispatchQueue.SchedulerTimeType.Stride) {
        $searchText
            .debounce(for: delay, scheduler: DispatchQueue.main)
            .assign(to: &$debouncedText)
    }
}

enum FocusField: Hashable {
    case field
}

struct SearchBarView: View {
    @Binding var searchText: String
    @Binding var isSearchAnilist: Bool
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
            Text("Anilist")
                .font(.system(size: 12))
                .fontWeight(.medium)
                .padding(2)
                .foregroundColor(Color.white.opacity(0.8))
                .background(isSearchAnilist ? AuthManager.shared.authedUser!.profileColor! : Color.gray.opacity(0.5))
                .cornerRadius(5)
                .contentShape(Rectangle())
                .onTapGesture {
                    isSearchAnilist.toggle()
                }
            ZStack (alignment: .leading) {
                OmenTextField(
                    isSearchAnilist ? "Search Anilist" : "Search your list",
                    text: $searchText,
                    isFocused: $focus,
                    returnKeyType: frontReturnKeyType,
                    onCommit: {
                        onCommit()
                    }
                )
            }
            
            if (!searchText.isEmpty) {
                // Clear button
                Button(action: {
                    self.searchText = ""
                    NSApp.keyWindow?.makeFirstResponder(nil)
                }) {
                    Image(systemName: "x.circle.fill")
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding(.leading, 5)
        .padding(.trailing, 5)
        .padding(.top, 1.5)
        .padding(.bottom, 1.5)
        .background(.quaternary)
        .cornerRadius(5)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant("fds"),
                      isSearchAnilist: .constant(false))
    }
}
