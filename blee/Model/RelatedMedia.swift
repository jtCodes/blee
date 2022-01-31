//
//  RelatedMedia.swift
//  ANIGO
//
//  Created by JT on 5/31/21.
//

import Foundation

enum MediaRelationType: String {
    case ADAPTATION, PREQUEL, SEQUEL
}

struct RelatedMedia: Hashable{
    var relation: MediaRelationType
    var media: Media
}
