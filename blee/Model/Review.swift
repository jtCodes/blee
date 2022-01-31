//
//  Review.swift
//  ANIGO
//
//  Created by JT on 6/1/21.
//

import Foundation

struct Review: Hashable {
    let id: Int
    let createdAt: Date
    let updatedAt: Date
    let user: User
    let score: Int
    // rating of this review
    let rating: Int
    let ratingAmount: Int
    // rating of this review by this user viewing this review
    let userRating: String
    let summary: String
    let fullReview: String
    let mediaBannerImage: String?
    let mediaTitle: String?
    let strId: String?
    
    func getDateLabel(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, y"

        return dateFormatter.string(from: date)
    }
    
    func getRatingSummary() -> String {
        if ratingAmount == 0  {
            return ""
        }
        
        return String(rating) + " out of " + String(ratingAmount) + " users liked this review"
    }
}
