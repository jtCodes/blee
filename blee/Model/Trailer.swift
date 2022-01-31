//
//  Trailer.swift
//  ANIGO (iOS)
//
//  Created by J Tan on 12/19/21.
//

import Foundation

struct Trailer: Hashable {
    var id: String = ""
    var site: TrailerSite = .youtube
    var thumbnail: String = ""
    var videoUrl: URL?
    
    init(id: String,
         site: TrailerSite,
         thumbnail: String,
         videoUrlStr: String) {
        self.id = id
        self.site = site
        self.thumbnail = thumbnail
        self.videoUrl = URL(string: videoUrlStr)
    }
    
    init(id: String,
         site: String,
         thumbnail: String,
         videoUrlStr: String) {
        if let site = toTrailerSite(siteStr: site) {
            self.id = id
            self.site = site
            self.thumbnail = thumbnail
            self.videoUrl = URL(string: videoUrlStr)
        }
    }
    
    init(trailerDetails: TrailerDetails) {
        if let id = trailerDetails.id,
           let siteStr = trailerDetails.site,
           let thumbnail = trailerDetails.thumbnail {
            if let site = toTrailerSite(siteStr: siteStr) {
                self.id = id
                self.site = site
                self.thumbnail = thumbnail
                self.videoUrl = createUrlFromAnilistTrailer(id: id, site: site)
            }
        }
    }
    
    init(id: String,
         site: TrailerSite) {
        self.id = id
        self.site = site
    }
    
    func toTrailerSite(siteStr: String) -> TrailerSite? {
        var site: TrailerSite?
        
        switch siteStr {
        case "youtube", "YouTube":
            site = .youtube
        case "dailymotion":
            site = .dailymotion
        default:
            site = nil
        }
        
        return site
    }
    
    func createUrlFromAnilistTrailer(id: String, site: TrailerSite) -> URL? {
        switch site {
        case .youtube:
            return URL(string: "https://www.youtube.com/watch?v=" + id)
        default:
            return nil
        }
    }
}

enum TrailerSite {
    case youtube, dailymotion, mydramalist, tmdb
}
