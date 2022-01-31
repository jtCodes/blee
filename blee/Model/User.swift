//
//  User.swift
//  ANIGO
//
//  Created by JT on 6/1/21.
//

import Foundation

struct User: Hashable {
    let id: Int
    let avatar: Avatar
    let name: String
    
    internal init(id: Int, avatar: Avatar, name: String) {
        self.id = id
        self.avatar = avatar
        self.name = name
    }
    
    init(userDetails: UserDetails) {
        self.id = userDetails.id
        self.avatar = Avatar(large: userDetails.avatar?.large,
                             medium: userDetails.avatar?.medium)
        self.name = userDetails.name
    }
}

struct Avatar: Hashable {
    let id: UUID = UUID()
    let large: String?
    let medium: String?
}
