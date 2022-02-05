//
//  MediaListPickerItem.swift
//  blee
//
//  Created by J Tan on 2/5/22.
//

import Foundation

struct MediaListPickerItem: Hashable {
    let id: String
    let label: String
    let isMediaListStatus: Bool
    let isCustomList: Bool
    
    func toMediaListStatus() -> MediaListStatus? {
        if (isMediaListStatus) {
            return MediaListStatus(rawValue: id)
        }
        
        return nil
    }
}
