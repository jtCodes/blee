//
//  ListItemView.swift
//  blee
//
//  Created by J Tan on 1/23/22.
//

import SwiftUI

struct ListItemView: View {
    @State private var hover = false
    
    var body: some View {
        HStack() {
            Text("heu")
        }
        .padding(5)
        .background(hover ? Color.blue : Color.clear)
        .onHover {_ in
            self.hover.toggle()
            print("hover")
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
