//
//  TabBarItemView.swift
//  blee
//
//  Created by J Tan on 2/2/22.
//

import SwiftUI

struct TabBarItemView<T>: View {
    var tabBarItemIndex: Int
    var tabBarItem: TabBarItem<T>
    var width: CGFloat
    @Binding var selectedTabBarIndex: Int
    
    var body: some View {
        Text(tabBarItem.label)
            .frame(width: width)
            .padding(2.5)
            .background(selectedTabBarIndex == tabBarItemIndex ?
                        tabBarItem.selectedColor : .clear)
            .contentShape(Rectangle())
            .cornerRadius(5)
    }
}

struct TabBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemView<MediaType>(
            tabBarItemIndex: 0,
            tabBarItem: TabBarItem<MediaType>(id: .anime,
                                              label: "Anime",
                                              selectedColor: .red),
            width: 150,
            selectedTabBarIndex: .constant(0))
    }
}
