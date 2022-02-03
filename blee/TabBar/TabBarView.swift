//
//  TabBarView.swift
//  blee
//
//  Created by J Tan on 2/2/22.
//

import SwiftUI

struct TabBarView<T>: View {
    var tabItems: [TabBarItem<T>]
    var width: CGFloat
    var onSelectedTabItemIndexChange: (_ newIndex: Int) -> Void
    @Binding var selectedTabIndex: Int
    
    var body: some View {
        HStack(alignment: .center) {
            TabBarItemView<T>(
                tabBarItemIndex: 0,
                tabBarItem: tabItems[0],
                width: width / 2,
                selectedTabBarIndex: $selectedTabIndex)
                .onTapGesture {
                    selectedTabIndex = 0
                    onSelectedTabItemIndexChange(0)
                }
            TabBarItemView<T>(
                tabBarItemIndex: 1,
                tabBarItem: tabItems[1],
                width: width / 2,
                selectedTabBarIndex: $selectedTabIndex)
                .onTapGesture {
                    selectedTabIndex = 1
                    onSelectedTabItemIndexChange(1)
                }
        }
        .frame(width: width)
        .background(.quaternary)
        .cornerRadius(5)
    }
}

//struct TabBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabBarView<MediaType>(tabItems: [TabBarItem(id: .anime,
//                                                    label: "Anime",
//                                                    selectedColor: .red),
//                                         TabBarItem(id: .manga,
//                                                    label: "manga",
//                                                    selectedColor: .blue)],
//                              width: 350, selectedTab: TabBarItem(id: .anime,
//                                                                  label: "Anime",
//                                                                  selectedColor: .red))
//    }
//}
