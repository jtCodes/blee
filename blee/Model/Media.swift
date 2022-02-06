//
//  Media.swift
//
//
//  Created by JT on 4/11/21.
//

import Foundation
import SwiftUI

enum AnigoMediaType: String {
    case anime,
         manga,
         cartoon,
         tvshow,
         movie,
         documentary,
         youtube,
         asian
}

enum MediaConsumeStatusType: String {
    case consuming,
         completed,
         onHold,
         dropped,
         planToWatch,
         unknown
    
    var displayLabel: String {
        switch self {
        case .consuming:
            return "Consuming"
        case .completed:
            return "Completed"
        case .onHold:
            return "On Hold"
        case .dropped:
            return "Dropped"
        case .planToWatch:
            return "Plan to Watch"
        case .unknown:
            return "Unknown"
        }
    }
}

enum MediaDetailDataSource: String {
    case anilist,
         tmdb,
         mydramalist,
         myanimelist
}

let firebaseDataSourceToDataSource: [String: MediaDetailDataSource] = ["tmdb": .tmdb,
                                                                       "mydramalist": .mydramalist,
                                                                       "anilist": .anilist,
                                                                       "myanimelist": .myanimelist]

let anilistMediaTypeToAnigoMediaType: [MediaType: AnigoMediaType] = [.anime: .anime,
                                                                     .manga: .manga]

struct Media: Hashable {
    var id: Int = -1
    var idMal: Int?
    var urlId: String = ""
    var title: MediaTitle = MediaTitle(romaji: "",
                                       english: "",
                                       native: "",
                                       userPreferred: "")
    var format: String = ""
    var genres: [String] = []
    var description: String = ""
    var seasonYear: Int = -1
    var nextAiringEpisode: NextMediaAiringEpisode = NextMediaAiringEpisode(id: -1,
                                                                           episode: -1,
                                                                           timeUntilAiring: -1)
    var episodes: Int = -1
    var duration: Int = -1
    var status: String = ""
    var averageScore: Int = -1
    var coverImage: MediaCoverImage = MediaCoverImage()
    var meanScore: Int = -1
    var season: String = ""
    var type: AnigoMediaType = .anime
    var chapters: Int = -1
    var relatedMedium: [RelatedMedia] = []
    var recommendations: [Media] = []
    var reviews: [Review] = []
    var dataSource: MediaDetailDataSource?
    var premiered: String = ""
    var trailers: [Trailer]?
    var anilistStatus: MediaStatus?
    var anilistFormat: MediaFormat?
    
    init() {
        
    }
    
    // MARK: - Anilist
    // suitable for gallery item
    init(
        shortMediaDetails: ShortMediaDetails
    ) {
        self.id = shortMediaDetails.id
        self.idMal = shortMediaDetails.idMal
        self.title = MediaTitle(romaji: shortMediaDetails.title?.romaji ?? "",
                                english: shortMediaDetails.title?.english ?? "",
                                native: shortMediaDetails.title?.native ?? "",
                                userPreferred: shortMediaDetails.title?.userPreferred ?? "")
        self.coverImage = MediaCoverImage(extraLarge: shortMediaDetails.coverImage?.extraLarge,
                                          large: shortMediaDetails.coverImage?.large,
                                          medium: shortMediaDetails.coverImage?.medium)
        self.season = shortMediaDetails.season?.rawValue ?? ""
        self.seasonYear = shortMediaDetails.seasonYear ?? -1
        self.dataSource = .anilist
        self.anilistStatus = shortMediaDetails.status
        self.anilistFormat = shortMediaDetails.format
    }
    
    init(
        id: Int,
        title: MediaTitle,
        format: String,
        genres: [String],
        description: String,
        seasonYear: Int,
        nextAiringEpisode: NextMediaAiringEpisode,
        episodes: Int,
        duration: Int,
        status: String,
        averageScore: Int,
        coverImage: MediaCoverImage,
        meanScore: Int,
        season: String,
        dataSource: MediaDetailDataSource
    ) {
        self.id = id
        self.title = title
        self.format = format
        self.genres = genres
        self.description = description
        self.seasonYear = seasonYear
        self.nextAiringEpisode = nextAiringEpisode
        self.episodes = episodes
        self.duration = duration
        self.status = status
        self.averageScore = averageScore
        self.coverImage = coverImage
        self.meanScore = meanScore
        self.season = season
        self.dataSource = dataSource
    }
    
    init(mediaDetails: MediaDetails) {
        let mediaTitle = MediaTitle(romaji: mediaDetails.title?.romaji ?? "",
                                    english: mediaDetails.title?.english ?? "",
                                    native: mediaDetails.title?.native ?? "",
                                    userPreferred: mediaDetails.title?.userPreferred ?? "")
        let mediaCoverImage = MediaCoverImage(extraLarge: mediaDetails.coverImage?.extraLarge ?? "",
                                              large:  mediaDetails.coverImage?.large ?? "",
                                              medium:  mediaDetails.coverImage?.medium ?? "")
        let nextAiringEpisode = NextMediaAiringEpisode(id: mediaDetails.nextAiringEpisode?.id ?? -1,
                                                       episode: mediaDetails.nextAiringEpisode?.episode ?? -1,
                                                       timeUntilAiring:  mediaDetails.nextAiringEpisode?.timeUntilAiring ?? -1)
        self.id = mediaDetails.id
        self.idMal = mediaDetails.idMal
        self.title = mediaTitle
        self.format = mediaDetails.format?.rawValue ?? ""
        self.description = ""
        self.seasonYear = mediaDetails.seasonYear ?? -1
        self.nextAiringEpisode = nextAiringEpisode
        self.episodes = mediaDetails.episodes ?? -1
        self.duration = mediaDetails.duration ?? -1
        self.status = mediaDetails.status?.rawValue ?? ""
        self.averageScore = mediaDetails.averageScore ?? -1
        self.coverImage = mediaCoverImage
        self.meanScore = mediaDetails.meanScore ?? -1
        self.season = mediaDetails.season?.rawValue ?? ""
        self.type = anilistMediaTypeToAnigoMediaType[mediaDetails.type ?? .anime] ?? .anime
        self.dataSource = .anilist
        self.chapters = mediaDetails.chapters ?? -1
        self.premiered = getAnilistPremieredLabel()
        
        if mediaDetails.genres != nil {
            self.genres = mediaDetails.genres.flatMap{ $0 } as? [String] ?? []
        }
    }
}

// MARK: - Helper funcs
extension Media {
    func getMediaIdString() -> String {
        if let dataSource = dataSource {
            if (dataSource != .anilist) {
                return dataSource.rawValue + String(id)
            }
        }
        
        return String(id)
    }
    
    func getAvailableStreamingEpisodeCount() -> Int {
        var availableStreamingEpisodeCount: Int = -1
        
        if (self.nextAiringEpisode.episode > 0) {
            availableStreamingEpisodeCount = self.nextAiringEpisode.episode
        } else if (self.episodes > 0) {
            availableStreamingEpisodeCount = self.episodes
        }
        
        return availableStreamingEpisodeCount
    }
    
    func getTotalEpisodeCount() -> Int {
        var totalEpisodeCount: Int = -1
        
        if (self.episodes == -1) {
            totalEpisodeCount = self.nextAiringEpisode.episode
        } else {
            totalEpisodeCount = self.episodes
        }
        
        return totalEpisodeCount
    }
    
    
    func getAnilistPremieredLabel() -> String {
        return String(self.season) + " " + String(self.seasonYear)
    }
    
    func mockMedia() -> Media {
        return Media(id: 1,
                     title: MediaTitle(romaji: "", english: "", native: "", userPreferred: "ONE PIECE"),
                     format: "",
                     genres: ["comedy", "action"],
                     description: "Beginning its tale in 19th century England, young aristocrat Jonathan Joestar finds himself locked in bitter rivalry with Dio Brando, a low-born boy who Jonathan's father took under his wing after the death of Dio's father. Discontent with his station in life, Dio's fathomless lust to reign over all eventually leads him to seek the supernatural powers of an ancient Aztec stone mask in the Joestar's possession—an artifact that will forever change the destiny of Dio and Jonathan for generations to come.<br>\n<br>\nFifty years later, in 1938 New York City, Jonathan's grandson Joseph Joestar must take up his grandfather's mission and master the abilities necessary to destroy the stone mask and its immensely powerful creators who threaten humanity's very existence, the Pillar Men.<br><br>\n(Source: Anime News Network)",
                     seasonYear: 2012,
                     nextAiringEpisode: NextMediaAiringEpisode(id: 1, episode: 1, timeUntilAiring: 1),
                     episodes: 12,
                     duration: 1,
                     status: "",
                     averageScore: 84,
                     coverImage: MediaCoverImage(extraLarge: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/1094.jpg"),
                     meanScore: 1,
                     season: "SPRING",
                     dataSource: .anilist)
    }
    
    func getTitleSearchString() -> String {
        return title.native + title.english + title.romaji + title.userPreferred
    }
}

struct MediaTitle: Hashable {
    var romaji: String
    var english: String
    var native: String
    var userPreferred: String
}

struct MediaCoverImage: Hashable {
    var extraLarge: String?
    var large: String?
    var medium: String?
}

struct ExternalLink: Hashable {
    let site: String
    let url: String
    let id: Int
}

struct NextMediaAiringEpisode: Hashable {
    var id: Int
    var episode: Int
    var timeUntilAiring: Int
}

