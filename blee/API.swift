// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// Media type enum, anime or manga.
public enum MediaType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Japanese Anime
  case anime
  /// Asian comic
  case manga
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ANIME": self = .anime
      case "MANGA": self = .manga
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .anime: return "ANIME"
      case .manga: return "MANGA"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaType, rhs: MediaType) -> Bool {
    switch (lhs, rhs) {
      case (.anime, .anime): return true
      case (.manga, .manga): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaType] {
    return [
      .anime,
      .manga,
    ]
  }
}

/// Media sort enums
public enum MediaSort: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case id
  case idDesc
  case titleRomaji
  case titleRomajiDesc
  case titleEnglish
  case titleEnglishDesc
  case titleNative
  case titleNativeDesc
  case type
  case typeDesc
  case format
  case formatDesc
  case startDate
  case startDateDesc
  case endDate
  case endDateDesc
  case score
  case scoreDesc
  case popularity
  case popularityDesc
  case trending
  case trendingDesc
  case episodes
  case episodesDesc
  case duration
  case durationDesc
  case status
  case statusDesc
  case chapters
  case chaptersDesc
  case volumes
  case volumesDesc
  case updatedAt
  case updatedAtDesc
  case searchMatch
  case favourites
  case favouritesDesc
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ID": self = .id
      case "ID_DESC": self = .idDesc
      case "TITLE_ROMAJI": self = .titleRomaji
      case "TITLE_ROMAJI_DESC": self = .titleRomajiDesc
      case "TITLE_ENGLISH": self = .titleEnglish
      case "TITLE_ENGLISH_DESC": self = .titleEnglishDesc
      case "TITLE_NATIVE": self = .titleNative
      case "TITLE_NATIVE_DESC": self = .titleNativeDesc
      case "TYPE": self = .type
      case "TYPE_DESC": self = .typeDesc
      case "FORMAT": self = .format
      case "FORMAT_DESC": self = .formatDesc
      case "START_DATE": self = .startDate
      case "START_DATE_DESC": self = .startDateDesc
      case "END_DATE": self = .endDate
      case "END_DATE_DESC": self = .endDateDesc
      case "SCORE": self = .score
      case "SCORE_DESC": self = .scoreDesc
      case "POPULARITY": self = .popularity
      case "POPULARITY_DESC": self = .popularityDesc
      case "TRENDING": self = .trending
      case "TRENDING_DESC": self = .trendingDesc
      case "EPISODES": self = .episodes
      case "EPISODES_DESC": self = .episodesDesc
      case "DURATION": self = .duration
      case "DURATION_DESC": self = .durationDesc
      case "STATUS": self = .status
      case "STATUS_DESC": self = .statusDesc
      case "CHAPTERS": self = .chapters
      case "CHAPTERS_DESC": self = .chaptersDesc
      case "VOLUMES": self = .volumes
      case "VOLUMES_DESC": self = .volumesDesc
      case "UPDATED_AT": self = .updatedAt
      case "UPDATED_AT_DESC": self = .updatedAtDesc
      case "SEARCH_MATCH": self = .searchMatch
      case "FAVOURITES": self = .favourites
      case "FAVOURITES_DESC": self = .favouritesDesc
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .id: return "ID"
      case .idDesc: return "ID_DESC"
      case .titleRomaji: return "TITLE_ROMAJI"
      case .titleRomajiDesc: return "TITLE_ROMAJI_DESC"
      case .titleEnglish: return "TITLE_ENGLISH"
      case .titleEnglishDesc: return "TITLE_ENGLISH_DESC"
      case .titleNative: return "TITLE_NATIVE"
      case .titleNativeDesc: return "TITLE_NATIVE_DESC"
      case .type: return "TYPE"
      case .typeDesc: return "TYPE_DESC"
      case .format: return "FORMAT"
      case .formatDesc: return "FORMAT_DESC"
      case .startDate: return "START_DATE"
      case .startDateDesc: return "START_DATE_DESC"
      case .endDate: return "END_DATE"
      case .endDateDesc: return "END_DATE_DESC"
      case .score: return "SCORE"
      case .scoreDesc: return "SCORE_DESC"
      case .popularity: return "POPULARITY"
      case .popularityDesc: return "POPULARITY_DESC"
      case .trending: return "TRENDING"
      case .trendingDesc: return "TRENDING_DESC"
      case .episodes: return "EPISODES"
      case .episodesDesc: return "EPISODES_DESC"
      case .duration: return "DURATION"
      case .durationDesc: return "DURATION_DESC"
      case .status: return "STATUS"
      case .statusDesc: return "STATUS_DESC"
      case .chapters: return "CHAPTERS"
      case .chaptersDesc: return "CHAPTERS_DESC"
      case .volumes: return "VOLUMES"
      case .volumesDesc: return "VOLUMES_DESC"
      case .updatedAt: return "UPDATED_AT"
      case .updatedAtDesc: return "UPDATED_AT_DESC"
      case .searchMatch: return "SEARCH_MATCH"
      case .favourites: return "FAVOURITES"
      case .favouritesDesc: return "FAVOURITES_DESC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaSort, rhs: MediaSort) -> Bool {
    switch (lhs, rhs) {
      case (.id, .id): return true
      case (.idDesc, .idDesc): return true
      case (.titleRomaji, .titleRomaji): return true
      case (.titleRomajiDesc, .titleRomajiDesc): return true
      case (.titleEnglish, .titleEnglish): return true
      case (.titleEnglishDesc, .titleEnglishDesc): return true
      case (.titleNative, .titleNative): return true
      case (.titleNativeDesc, .titleNativeDesc): return true
      case (.type, .type): return true
      case (.typeDesc, .typeDesc): return true
      case (.format, .format): return true
      case (.formatDesc, .formatDesc): return true
      case (.startDate, .startDate): return true
      case (.startDateDesc, .startDateDesc): return true
      case (.endDate, .endDate): return true
      case (.endDateDesc, .endDateDesc): return true
      case (.score, .score): return true
      case (.scoreDesc, .scoreDesc): return true
      case (.popularity, .popularity): return true
      case (.popularityDesc, .popularityDesc): return true
      case (.trending, .trending): return true
      case (.trendingDesc, .trendingDesc): return true
      case (.episodes, .episodes): return true
      case (.episodesDesc, .episodesDesc): return true
      case (.duration, .duration): return true
      case (.durationDesc, .durationDesc): return true
      case (.status, .status): return true
      case (.statusDesc, .statusDesc): return true
      case (.chapters, .chapters): return true
      case (.chaptersDesc, .chaptersDesc): return true
      case (.volumes, .volumes): return true
      case (.volumesDesc, .volumesDesc): return true
      case (.updatedAt, .updatedAt): return true
      case (.updatedAtDesc, .updatedAtDesc): return true
      case (.searchMatch, .searchMatch): return true
      case (.favourites, .favourites): return true
      case (.favouritesDesc, .favouritesDesc): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaSort] {
    return [
      .id,
      .idDesc,
      .titleRomaji,
      .titleRomajiDesc,
      .titleEnglish,
      .titleEnglishDesc,
      .titleNative,
      .titleNativeDesc,
      .type,
      .typeDesc,
      .format,
      .formatDesc,
      .startDate,
      .startDateDesc,
      .endDate,
      .endDateDesc,
      .score,
      .scoreDesc,
      .popularity,
      .popularityDesc,
      .trending,
      .trendingDesc,
      .episodes,
      .episodesDesc,
      .duration,
      .durationDesc,
      .status,
      .statusDesc,
      .chapters,
      .chaptersDesc,
      .volumes,
      .volumesDesc,
      .updatedAt,
      .updatedAtDesc,
      .searchMatch,
      .favourites,
      .favouritesDesc,
    ]
  }
}

public enum MediaSeason: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Months December to February
  case winter
  /// Months March to May
  case spring
  /// Months June to August
  case summer
  /// Months September to November
  case fall
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "WINTER": self = .winter
      case "SPRING": self = .spring
      case "SUMMER": self = .summer
      case "FALL": self = .fall
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .winter: return "WINTER"
      case .spring: return "SPRING"
      case .summer: return "SUMMER"
      case .fall: return "FALL"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaSeason, rhs: MediaSeason) -> Bool {
    switch (lhs, rhs) {
      case (.winter, .winter): return true
      case (.spring, .spring): return true
      case (.summer, .summer): return true
      case (.fall, .fall): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaSeason] {
    return [
      .winter,
      .spring,
      .summer,
      .fall,
    ]
  }
}

/// Thread sort enums
public enum ThreadSort: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case id
  case idDesc
  case title
  case titleDesc
  case createdAt
  case createdAtDesc
  case updatedAt
  case updatedAtDesc
  case repliedAt
  case repliedAtDesc
  case replyCount
  case replyCountDesc
  case viewCount
  case viewCountDesc
  case isSticky
  case searchMatch
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ID": self = .id
      case "ID_DESC": self = .idDesc
      case "TITLE": self = .title
      case "TITLE_DESC": self = .titleDesc
      case "CREATED_AT": self = .createdAt
      case "CREATED_AT_DESC": self = .createdAtDesc
      case "UPDATED_AT": self = .updatedAt
      case "UPDATED_AT_DESC": self = .updatedAtDesc
      case "REPLIED_AT": self = .repliedAt
      case "REPLIED_AT_DESC": self = .repliedAtDesc
      case "REPLY_COUNT": self = .replyCount
      case "REPLY_COUNT_DESC": self = .replyCountDesc
      case "VIEW_COUNT": self = .viewCount
      case "VIEW_COUNT_DESC": self = .viewCountDesc
      case "IS_STICKY": self = .isSticky
      case "SEARCH_MATCH": self = .searchMatch
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .id: return "ID"
      case .idDesc: return "ID_DESC"
      case .title: return "TITLE"
      case .titleDesc: return "TITLE_DESC"
      case .createdAt: return "CREATED_AT"
      case .createdAtDesc: return "CREATED_AT_DESC"
      case .updatedAt: return "UPDATED_AT"
      case .updatedAtDesc: return "UPDATED_AT_DESC"
      case .repliedAt: return "REPLIED_AT"
      case .repliedAtDesc: return "REPLIED_AT_DESC"
      case .replyCount: return "REPLY_COUNT"
      case .replyCountDesc: return "REPLY_COUNT_DESC"
      case .viewCount: return "VIEW_COUNT"
      case .viewCountDesc: return "VIEW_COUNT_DESC"
      case .isSticky: return "IS_STICKY"
      case .searchMatch: return "SEARCH_MATCH"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ThreadSort, rhs: ThreadSort) -> Bool {
    switch (lhs, rhs) {
      case (.id, .id): return true
      case (.idDesc, .idDesc): return true
      case (.title, .title): return true
      case (.titleDesc, .titleDesc): return true
      case (.createdAt, .createdAt): return true
      case (.createdAtDesc, .createdAtDesc): return true
      case (.updatedAt, .updatedAt): return true
      case (.updatedAtDesc, .updatedAtDesc): return true
      case (.repliedAt, .repliedAt): return true
      case (.repliedAtDesc, .repliedAtDesc): return true
      case (.replyCount, .replyCount): return true
      case (.replyCountDesc, .replyCountDesc): return true
      case (.viewCount, .viewCount): return true
      case (.viewCountDesc, .viewCountDesc): return true
      case (.isSticky, .isSticky): return true
      case (.searchMatch, .searchMatch): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ThreadSort] {
    return [
      .id,
      .idDesc,
      .title,
      .titleDesc,
      .createdAt,
      .createdAtDesc,
      .updatedAt,
      .updatedAtDesc,
      .repliedAt,
      .repliedAtDesc,
      .replyCount,
      .replyCountDesc,
      .viewCount,
      .viewCountDesc,
      .isSticky,
      .searchMatch,
    ]
  }
}

/// Review rating enums
public enum ReviewRating: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case noVote
  case upVote
  case downVote
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "NO_VOTE": self = .noVote
      case "UP_VOTE": self = .upVote
      case "DOWN_VOTE": self = .downVote
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .noVote: return "NO_VOTE"
      case .upVote: return "UP_VOTE"
      case .downVote: return "DOWN_VOTE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ReviewRating, rhs: ReviewRating) -> Bool {
    switch (lhs, rhs) {
      case (.noVote, .noVote): return true
      case (.upVote, .upVote): return true
      case (.downVote, .downVote): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ReviewRating] {
    return [
      .noVote,
      .upVote,
      .downVote,
    ]
  }
}

/// Activity type enum.
public enum ActivityType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// A text activity
  case text
  /// A anime list update activity
  case animeList
  /// A manga list update activity
  case mangaList
  /// A text message activity sent to another user
  case message
  /// Anime & Manga list update, only used in query arguments
  case mediaList
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "TEXT": self = .text
      case "ANIME_LIST": self = .animeList
      case "MANGA_LIST": self = .mangaList
      case "MESSAGE": self = .message
      case "MEDIA_LIST": self = .mediaList
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .text: return "TEXT"
      case .animeList: return "ANIME_LIST"
      case .mangaList: return "MANGA_LIST"
      case .message: return "MESSAGE"
      case .mediaList: return "MEDIA_LIST"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ActivityType, rhs: ActivityType) -> Bool {
    switch (lhs, rhs) {
      case (.text, .text): return true
      case (.animeList, .animeList): return true
      case (.mangaList, .mangaList): return true
      case (.message, .message): return true
      case (.mediaList, .mediaList): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ActivityType] {
    return [
      .text,
      .animeList,
      .mangaList,
      .message,
      .mediaList,
    ]
  }
}

/// Mod role enums
public enum ModRole: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// An AniList administrator
  case admin
  /// A head developer of AniList
  case leadDeveloper
  /// An AniList developer
  case developer
  /// A lead community moderator
  case leadCommunity
  /// A community moderator
  case community
  /// A discord community moderator
  case discordCommunity
  /// A lead anime data moderator
  case leadAnimeData
  /// An anime data moderator
  case animeData
  /// A lead manga data moderator
  case leadMangaData
  /// A manga data moderator
  case mangaData
  /// A lead social media moderator
  case leadSocialMedia
  /// A social media moderator
  case socialMedia
  /// A retired moderator
  case retired
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ADMIN": self = .admin
      case "LEAD_DEVELOPER": self = .leadDeveloper
      case "DEVELOPER": self = .developer
      case "LEAD_COMMUNITY": self = .leadCommunity
      case "COMMUNITY": self = .community
      case "DISCORD_COMMUNITY": self = .discordCommunity
      case "LEAD_ANIME_DATA": self = .leadAnimeData
      case "ANIME_DATA": self = .animeData
      case "LEAD_MANGA_DATA": self = .leadMangaData
      case "MANGA_DATA": self = .mangaData
      case "LEAD_SOCIAL_MEDIA": self = .leadSocialMedia
      case "SOCIAL_MEDIA": self = .socialMedia
      case "RETIRED": self = .retired
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .admin: return "ADMIN"
      case .leadDeveloper: return "LEAD_DEVELOPER"
      case .developer: return "DEVELOPER"
      case .leadCommunity: return "LEAD_COMMUNITY"
      case .community: return "COMMUNITY"
      case .discordCommunity: return "DISCORD_COMMUNITY"
      case .leadAnimeData: return "LEAD_ANIME_DATA"
      case .animeData: return "ANIME_DATA"
      case .leadMangaData: return "LEAD_MANGA_DATA"
      case .mangaData: return "MANGA_DATA"
      case .leadSocialMedia: return "LEAD_SOCIAL_MEDIA"
      case .socialMedia: return "SOCIAL_MEDIA"
      case .retired: return "RETIRED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ModRole, rhs: ModRole) -> Bool {
    switch (lhs, rhs) {
      case (.admin, .admin): return true
      case (.leadDeveloper, .leadDeveloper): return true
      case (.developer, .developer): return true
      case (.leadCommunity, .leadCommunity): return true
      case (.community, .community): return true
      case (.discordCommunity, .discordCommunity): return true
      case (.leadAnimeData, .leadAnimeData): return true
      case (.animeData, .animeData): return true
      case (.leadMangaData, .leadMangaData): return true
      case (.mangaData, .mangaData): return true
      case (.leadSocialMedia, .leadSocialMedia): return true
      case (.socialMedia, .socialMedia): return true
      case (.retired, .retired): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ModRole] {
    return [
      .admin,
      .leadDeveloper,
      .developer,
      .leadCommunity,
      .community,
      .discordCommunity,
      .leadAnimeData,
      .animeData,
      .leadMangaData,
      .mangaData,
      .leadSocialMedia,
      .socialMedia,
      .retired,
    ]
  }
}

/// The current releasing status of the media
public enum MediaStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Has completed and is no longer being released
  case finished
  /// Currently releasing
  case releasing
  /// To be released at a later date
  case notYetReleased
  /// Ended before the work could be finished
  case cancelled
  /// Version 2 only. Is currently paused from releasing and will resume at a later date
  case hiatus
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FINISHED": self = .finished
      case "RELEASING": self = .releasing
      case "NOT_YET_RELEASED": self = .notYetReleased
      case "CANCELLED": self = .cancelled
      case "HIATUS": self = .hiatus
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .finished: return "FINISHED"
      case .releasing: return "RELEASING"
      case .notYetReleased: return "NOT_YET_RELEASED"
      case .cancelled: return "CANCELLED"
      case .hiatus: return "HIATUS"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaStatus, rhs: MediaStatus) -> Bool {
    switch (lhs, rhs) {
      case (.finished, .finished): return true
      case (.releasing, .releasing): return true
      case (.notYetReleased, .notYetReleased): return true
      case (.cancelled, .cancelled): return true
      case (.hiatus, .hiatus): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaStatus] {
    return [
      .finished,
      .releasing,
      .notYetReleased,
      .cancelled,
      .hiatus,
    ]
  }
}

/// The language the user wants to see media titles in
public enum UserTitleLanguage: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The romanization of the native language title
  case romaji
  /// The official english title
  case english
  /// Official title in it's native language
  case native
  /// The romanization of the native language title, stylised by media creator
  case romajiStylised
  /// The official english title, stylised by media creator
  case englishStylised
  /// Official title in it's native language, stylised by media creator
  case nativeStylised
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ROMAJI": self = .romaji
      case "ENGLISH": self = .english
      case "NATIVE": self = .native
      case "ROMAJI_STYLISED": self = .romajiStylised
      case "ENGLISH_STYLISED": self = .englishStylised
      case "NATIVE_STYLISED": self = .nativeStylised
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .romaji: return "ROMAJI"
      case .english: return "ENGLISH"
      case .native: return "NATIVE"
      case .romajiStylised: return "ROMAJI_STYLISED"
      case .englishStylised: return "ENGLISH_STYLISED"
      case .nativeStylised: return "NATIVE_STYLISED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: UserTitleLanguage, rhs: UserTitleLanguage) -> Bool {
    switch (lhs, rhs) {
      case (.romaji, .romaji): return true
      case (.english, .english): return true
      case (.native, .native): return true
      case (.romajiStylised, .romajiStylised): return true
      case (.englishStylised, .englishStylised): return true
      case (.nativeStylised, .nativeStylised): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [UserTitleLanguage] {
    return [
      .romaji,
      .english,
      .native,
      .romajiStylised,
      .englishStylised,
      .nativeStylised,
    ]
  }
}

/// Notification type enum
public enum NotificationType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// A user has sent you message
  case activityMessage
  /// A user has replied to your activity
  case activityReply
  /// A user has followed you
  case following
  /// A user has mentioned you in their activity
  case activityMention
  /// A user has mentioned you in a forum comment
  case threadCommentMention
  /// A user has commented in one of your subscribed forum threads
  case threadSubscribed
  /// A user has replied to your forum comment
  case threadCommentReply
  /// An anime you are currently watching has aired
  case airing
  /// A user has liked your activity
  case activityLike
  /// A user has liked your activity reply
  case activityReplyLike
  /// A user has liked your forum thread
  case threadLike
  /// A user has liked your forum comment
  case threadCommentLike
  /// A user has replied to activity you have also replied to
  case activityReplySubscribed
  /// A new anime or manga has been added to the site where its related media is on the user's list
  case relatedMediaAddition
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVITY_MESSAGE": self = .activityMessage
      case "ACTIVITY_REPLY": self = .activityReply
      case "FOLLOWING": self = .following
      case "ACTIVITY_MENTION": self = .activityMention
      case "THREAD_COMMENT_MENTION": self = .threadCommentMention
      case "THREAD_SUBSCRIBED": self = .threadSubscribed
      case "THREAD_COMMENT_REPLY": self = .threadCommentReply
      case "AIRING": self = .airing
      case "ACTIVITY_LIKE": self = .activityLike
      case "ACTIVITY_REPLY_LIKE": self = .activityReplyLike
      case "THREAD_LIKE": self = .threadLike
      case "THREAD_COMMENT_LIKE": self = .threadCommentLike
      case "ACTIVITY_REPLY_SUBSCRIBED": self = .activityReplySubscribed
      case "RELATED_MEDIA_ADDITION": self = .relatedMediaAddition
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .activityMessage: return "ACTIVITY_MESSAGE"
      case .activityReply: return "ACTIVITY_REPLY"
      case .following: return "FOLLOWING"
      case .activityMention: return "ACTIVITY_MENTION"
      case .threadCommentMention: return "THREAD_COMMENT_MENTION"
      case .threadSubscribed: return "THREAD_SUBSCRIBED"
      case .threadCommentReply: return "THREAD_COMMENT_REPLY"
      case .airing: return "AIRING"
      case .activityLike: return "ACTIVITY_LIKE"
      case .activityReplyLike: return "ACTIVITY_REPLY_LIKE"
      case .threadLike: return "THREAD_LIKE"
      case .threadCommentLike: return "THREAD_COMMENT_LIKE"
      case .activityReplySubscribed: return "ACTIVITY_REPLY_SUBSCRIBED"
      case .relatedMediaAddition: return "RELATED_MEDIA_ADDITION"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: NotificationType, rhs: NotificationType) -> Bool {
    switch (lhs, rhs) {
      case (.activityMessage, .activityMessage): return true
      case (.activityReply, .activityReply): return true
      case (.following, .following): return true
      case (.activityMention, .activityMention): return true
      case (.threadCommentMention, .threadCommentMention): return true
      case (.threadSubscribed, .threadSubscribed): return true
      case (.threadCommentReply, .threadCommentReply): return true
      case (.airing, .airing): return true
      case (.activityLike, .activityLike): return true
      case (.activityReplyLike, .activityReplyLike): return true
      case (.threadLike, .threadLike): return true
      case (.threadCommentLike, .threadCommentLike): return true
      case (.activityReplySubscribed, .activityReplySubscribed): return true
      case (.relatedMediaAddition, .relatedMediaAddition): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [NotificationType] {
    return [
      .activityMessage,
      .activityReply,
      .following,
      .activityMention,
      .threadCommentMention,
      .threadSubscribed,
      .threadCommentReply,
      .airing,
      .activityLike,
      .activityReplyLike,
      .threadLike,
      .threadCommentLike,
      .activityReplySubscribed,
      .relatedMediaAddition,
    ]
  }
}

/// Media list scoring type
public enum ScoreFormat: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// An integer from 0-100
  case point_100
  /// A float from 0-10 with 1 decimal place
  case point_10Decimal
  /// An integer from 0-10
  case point_10
  /// An integer from 0-5. Should be represented in Stars
  case point_5
  /// An integer from 0-3. Should be represented in Smileys. 0 => No Score, 1 => :(, 2 => :|, 3 => :)
  case point_3
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "POINT_100": self = .point_100
      case "POINT_10_DECIMAL": self = .point_10Decimal
      case "POINT_10": self = .point_10
      case "POINT_5": self = .point_5
      case "POINT_3": self = .point_3
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .point_100: return "POINT_100"
      case .point_10Decimal: return "POINT_10_DECIMAL"
      case .point_10: return "POINT_10"
      case .point_5: return "POINT_5"
      case .point_3: return "POINT_3"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ScoreFormat, rhs: ScoreFormat) -> Bool {
    switch (lhs, rhs) {
      case (.point_100, .point_100): return true
      case (.point_10Decimal, .point_10Decimal): return true
      case (.point_10, .point_10): return true
      case (.point_5, .point_5): return true
      case (.point_3, .point_3): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ScoreFormat] {
    return [
      .point_100,
      .point_10Decimal,
      .point_10,
      .point_5,
      .point_3,
    ]
  }
}

/// Media list watching/reading status enum.
public enum MediaListStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Currently watching/reading
  case current
  /// Planning to watch/read
  case planning
  /// Finished watching/reading
  case completed
  /// Stopped watching/reading before completing
  case dropped
  /// Paused watching/reading
  case paused
  /// Re-watching/reading
  case repeating
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CURRENT": self = .current
      case "PLANNING": self = .planning
      case "COMPLETED": self = .completed
      case "DROPPED": self = .dropped
      case "PAUSED": self = .paused
      case "REPEATING": self = .repeating
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .current: return "CURRENT"
      case .planning: return "PLANNING"
      case .completed: return "COMPLETED"
      case .dropped: return "DROPPED"
      case .paused: return "PAUSED"
      case .repeating: return "REPEATING"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaListStatus, rhs: MediaListStatus) -> Bool {
    switch (lhs, rhs) {
      case (.current, .current): return true
      case (.planning, .planning): return true
      case (.completed, .completed): return true
      case (.dropped, .dropped): return true
      case (.paused, .paused): return true
      case (.repeating, .repeating): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaListStatus] {
    return [
      .current,
      .planning,
      .completed,
      .dropped,
      .paused,
      .repeating,
    ]
  }
}

/// Date object that allows for incomplete date values (fuzzy)
public struct FuzzyDateInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - year: Numeric Year (2017)
  ///   - month: Numeric Month (3)
  ///   - day: Numeric Day (24)
  public init(year: Swift.Optional<Int?> = nil, month: Swift.Optional<Int?> = nil, day: Swift.Optional<Int?> = nil) {
    graphQLMap = ["year": year, "month": month, "day": day]
  }

  /// Numeric Year (2017)
  public var year: Swift.Optional<Int?> {
    get {
      return graphQLMap["year"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "year")
    }
  }

  /// Numeric Month (3)
  public var month: Swift.Optional<Int?> {
    get {
      return graphQLMap["month"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "month")
    }
  }

  /// Numeric Day (24)
  public var day: Swift.Optional<Int?> {
    get {
      return graphQLMap["day"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "day")
    }
  }
}

/// The format the media was released in
public enum MediaFormat: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Anime broadcast on television
  case tv
  /// Anime which are under 15 minutes in length and broadcast on television
  case tvShort
  /// Anime movies with a theatrical release
  case movie
  /// Special episodes that have been included in DVD/Blu-ray releases, picture dramas, pilots, etc
  case special
  /// (Original Video Animation) Anime that have been released directly on DVD/Blu-ray without originally going through a theatrical release or television broadcast
  case ova
  /// (Original Net Animation) Anime that have been originally released online or are only available through streaming services.
  case ona
  /// Short anime released as a music video
  case music
  /// Professionally published manga with more than one chapter
  case manga
  /// Written books released as a series of light novels
  case novel
  /// Manga with just one chapter
  case oneShot
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "TV": self = .tv
      case "TV_SHORT": self = .tvShort
      case "MOVIE": self = .movie
      case "SPECIAL": self = .special
      case "OVA": self = .ova
      case "ONA": self = .ona
      case "MUSIC": self = .music
      case "MANGA": self = .manga
      case "NOVEL": self = .novel
      case "ONE_SHOT": self = .oneShot
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .tv: return "TV"
      case .tvShort: return "TV_SHORT"
      case .movie: return "MOVIE"
      case .special: return "SPECIAL"
      case .ova: return "OVA"
      case .ona: return "ONA"
      case .music: return "MUSIC"
      case .manga: return "MANGA"
      case .novel: return "NOVEL"
      case .oneShot: return "ONE_SHOT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaFormat, rhs: MediaFormat) -> Bool {
    switch (lhs, rhs) {
      case (.tv, .tv): return true
      case (.tvShort, .tvShort): return true
      case (.movie, .movie): return true
      case (.special, .special): return true
      case (.ova, .ova): return true
      case (.ona, .ona): return true
      case (.music, .music): return true
      case (.manga, .manga): return true
      case (.novel, .novel): return true
      case (.oneShot, .oneShot): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaFormat] {
    return [
      .tv,
      .tvShort,
      .movie,
      .special,
      .ova,
      .ona,
      .music,
      .manga,
      .novel,
      .oneShot,
    ]
  }
}

/// Type of relation media has to its parent.
public enum MediaRelation: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// An adaption of this media into a different format
  case adaptation
  /// Released before the relation
  case prequel
  /// Released after the relation
  case sequel
  /// The media a side story is from
  case parent
  /// A side story of the parent media
  case sideStory
  /// Shares at least 1 character
  case character
  /// A shortened and summarized version
  case summary
  /// An alternative version of the same media
  case alternative
  /// An alternative version of the media with a different primary focus
  case spinOff
  /// Other
  case other
  /// Version 2 only. The source material the media was adapted from
  case source
  /// Version 2 only.
  case compilation
  /// Version 2 only.
  case contains
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ADAPTATION": self = .adaptation
      case "PREQUEL": self = .prequel
      case "SEQUEL": self = .sequel
      case "PARENT": self = .parent
      case "SIDE_STORY": self = .sideStory
      case "CHARACTER": self = .character
      case "SUMMARY": self = .summary
      case "ALTERNATIVE": self = .alternative
      case "SPIN_OFF": self = .spinOff
      case "OTHER": self = .other
      case "SOURCE": self = .source
      case "COMPILATION": self = .compilation
      case "CONTAINS": self = .contains
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .adaptation: return "ADAPTATION"
      case .prequel: return "PREQUEL"
      case .sequel: return "SEQUEL"
      case .parent: return "PARENT"
      case .sideStory: return "SIDE_STORY"
      case .character: return "CHARACTER"
      case .summary: return "SUMMARY"
      case .alternative: return "ALTERNATIVE"
      case .spinOff: return "SPIN_OFF"
      case .other: return "OTHER"
      case .source: return "SOURCE"
      case .compilation: return "COMPILATION"
      case .contains: return "CONTAINS"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MediaRelation, rhs: MediaRelation) -> Bool {
    switch (lhs, rhs) {
      case (.adaptation, .adaptation): return true
      case (.prequel, .prequel): return true
      case (.sequel, .sequel): return true
      case (.parent, .parent): return true
      case (.sideStory, .sideStory): return true
      case (.character, .character): return true
      case (.summary, .summary): return true
      case (.alternative, .alternative): return true
      case (.spinOff, .spinOff): return true
      case (.other, .other): return true
      case (.source, .source): return true
      case (.compilation, .compilation): return true
      case (.contains, .contains): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MediaRelation] {
    return [
      .adaptation,
      .prequel,
      .sequel,
      .parent,
      .sideStory,
      .character,
      .summary,
      .alternative,
      .spinOff,
      .other,
      .source,
      .compilation,
      .contains,
    ]
  }
}

public final class TrendingNowQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query TrendingNow($perPage: Int, $page: Int, $type: MediaType) {
      Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [TRENDING_DESC], type: $type, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
    }
    """

  public let operationName: String = "TrendingNow"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    return document
  }

  public var perPage: Int?
  public var page: Int?
  public var type: MediaType?

  public init(perPage: Int? = nil, page: Int? = nil, type: MediaType? = nil) {
    self.perPage = perPage
    self.page = page
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["perPage": perPage, "page": page, "type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["TRENDING_DESC"], "type": GraphQLVariable("type"), "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class TrendingNowByGenreQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query TrendingNowByGenre($perPage: Int, $page: Int, $type: MediaType, $genre: String) {
      Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [TRENDING_DESC], type: $type, genre: $genre, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
    }
    """

  public let operationName: String = "TrendingNowByGenre"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    return document
  }

  public var perPage: Int?
  public var page: Int?
  public var type: MediaType?
  public var genre: String?

  public init(perPage: Int? = nil, page: Int? = nil, type: MediaType? = nil, genre: String? = nil) {
    self.perPage = perPage
    self.page = page
    self.type = type
    self.genre = genre
  }

  public var variables: GraphQLMap? {
    return ["perPage": perPage, "page": page, "type": type, "genre": genre]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["TRENDING_DESC"], "type": GraphQLVariable("type"), "genre": GraphQLVariable("genre"), "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class PopularThisSeasonAnimeQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PopularThisSeasonAnime($perPage: Int, $page: Int, $type: MediaType) {
      Page(perPage: $perPage, page: $page) {
        __typename
        media(
          sort: [POPULARITY_DESC]
          type: $type
          seasonYear: 2021
          season: FALL
          isAdult: false
        ) {
          __typename
          ...ShortMediaDetails
        }
      }
    }
    """

  public let operationName: String = "PopularThisSeasonAnime"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    return document
  }

  public var perPage: Int?
  public var page: Int?
  public var type: MediaType?

  public init(perPage: Int? = nil, page: Int? = nil, type: MediaType? = nil) {
    self.perPage = perPage
    self.page = page
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["perPage": perPage, "page": page, "type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["POPULARITY_DESC"], "type": GraphQLVariable("type"), "seasonYear": 2021, "season": "FALL", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class AllTimeTopQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query AllTimeTop($perPage: Int, $page: Int, $type: MediaType) {
      Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [SCORE_DESC], type: $type, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
    }
    """

  public let operationName: String = "AllTimeTop"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    return document
  }

  public var perPage: Int?
  public var page: Int?
  public var type: MediaType?

  public init(perPage: Int? = nil, page: Int? = nil, type: MediaType? = nil) {
    self.perPage = perPage
    self.page = page
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["perPage": perPage, "page": page, "type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["SCORE_DESC"], "type": GraphQLVariable("type"), "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class SearchMediaQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchMedia($search: String, $sort: [MediaSort], $type: MediaType) {
      Page {
        __typename
        media(search: $search, sort: $sort, type: $type, isAdult: false) {
          __typename
          ...MediaDetails
        }
      }
    }
    """

  public let operationName: String = "SearchMedia"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + MediaDetails.fragmentDefinition)
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    document.append("\n" + ReviewDetails.fragmentDefinition)
    document.append("\n" + UserDetails.fragmentDefinition)
    document.append("\n" + TrailerDetails.fragmentDefinition)
    return document
  }

  public var search: String?
  public var sort: [MediaSort?]?
  public var type: MediaType?

  public init(search: String? = nil, sort: [MediaSort?]? = nil, type: MediaType? = nil) {
    self.search = search
    self.sort = sort
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["search": search, "sort": sort, "type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["search": GraphQLVariable("search"), "sort": GraphQLVariable("sort"), "type": GraphQLVariable("type"), "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(MediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var mediaDetails: MediaDetails {
            get {
              return MediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class GetMediaByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetMediaById($id: Int) {
      Media(id: $id) {
        __typename
        ...MediaDetails
      }
    }
    """

  public let operationName: String = "GetMediaById"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + MediaDetails.fragmentDefinition)
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    document.append("\n" + ReviewDetails.fragmentDefinition)
    document.append("\n" + UserDetails.fragmentDefinition)
    document.append("\n" + TrailerDetails.fragmentDefinition)
    return document
  }

  public var id: Int?

  public init(id: Int? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Media", arguments: ["id": GraphQLVariable("id")], type: .object(Medium.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(media: Medium? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Media": media.flatMap { (value: Medium) -> ResultMap in value.resultMap }])
    }

    /// Media query
    public var media: Medium? {
      get {
        return (resultMap["Media"] as? ResultMap).flatMap { Medium(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Media")
      }
    }

    public struct Medium: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Media"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(MediaDetails.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var mediaDetails: MediaDetails {
          get {
            return MediaDetails(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class DiscoverQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Discover($perPage: Int, $page: Int, $currentSeasonYear: Int, $currentSeason: MediaSeason, $nextSeasonYear: Int, $nextSeason: MediaSeason) {
      trendingAnime: Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [TRENDING_DESC], genre: null, type: ANIME, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
      trendingManga: Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [TRENDING_DESC], genre: null, type: MANGA, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
      trendingRomanceManga: Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [TRENDING_DESC], genre: "Romance", type: MANGA, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
      popularCurrentSeasonAnime: Page(perPage: $perPage, page: $page) {
        __typename
        media(
          sort: [POPULARITY_DESC]
          genre: null
          type: ANIME
          seasonYear: $currentSeasonYear
          season: $currentSeason
          isAdult: false
        ) {
          __typename
          ...ShortMediaDetails
        }
      }
      popularNextSeasonAnime: Page(perPage: $perPage, page: $page) {
        __typename
        media(
          sort: [POPULARITY_DESC]
          genre: null
          type: ANIME
          seasonYear: $nextSeasonYear
          season: $nextSeason
          isAdult: false
        ) {
          __typename
          ...ShortMediaDetails
        }
      }
      allTimeTopAnime: Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [SCORE_DESC], genre: null, type: ANIME, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
      allTimeTopManga: Page(perPage: $perPage, page: $page) {
        __typename
        media(sort: [SCORE_DESC], genre: null, type: MANGA, isAdult: false) {
          __typename
          ...ShortMediaDetails
        }
      }
    }
    """

  public let operationName: String = "Discover"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    return document
  }

  public var perPage: Int?
  public var page: Int?
  public var currentSeasonYear: Int?
  public var currentSeason: MediaSeason?
  public var nextSeasonYear: Int?
  public var nextSeason: MediaSeason?

  public init(perPage: Int? = nil, page: Int? = nil, currentSeasonYear: Int? = nil, currentSeason: MediaSeason? = nil, nextSeasonYear: Int? = nil, nextSeason: MediaSeason? = nil) {
    self.perPage = perPage
    self.page = page
    self.currentSeasonYear = currentSeasonYear
    self.currentSeason = currentSeason
    self.nextSeasonYear = nextSeasonYear
    self.nextSeason = nextSeason
  }

  public var variables: GraphQLMap? {
    return ["perPage": perPage, "page": page, "currentSeasonYear": currentSeasonYear, "currentSeason": currentSeason, "nextSeasonYear": nextSeasonYear, "nextSeason": nextSeason]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", alias: "trendingAnime", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(TrendingAnime.selections)),
        GraphQLField("Page", alias: "trendingManga", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(TrendingManga.selections)),
        GraphQLField("Page", alias: "trendingRomanceManga", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(TrendingRomanceManga.selections)),
        GraphQLField("Page", alias: "popularCurrentSeasonAnime", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(PopularCurrentSeasonAnime.selections)),
        GraphQLField("Page", alias: "popularNextSeasonAnime", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(PopularNextSeasonAnime.selections)),
        GraphQLField("Page", alias: "allTimeTopAnime", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(AllTimeTopAnime.selections)),
        GraphQLField("Page", alias: "allTimeTopManga", arguments: ["perPage": GraphQLVariable("perPage"), "page": GraphQLVariable("page")], type: .object(AllTimeTopManga.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(trendingAnime: TrendingAnime? = nil, trendingManga: TrendingManga? = nil, trendingRomanceManga: TrendingRomanceManga? = nil, popularCurrentSeasonAnime: PopularCurrentSeasonAnime? = nil, popularNextSeasonAnime: PopularNextSeasonAnime? = nil, allTimeTopAnime: AllTimeTopAnime? = nil, allTimeTopManga: AllTimeTopManga? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "trendingAnime": trendingAnime.flatMap { (value: TrendingAnime) -> ResultMap in value.resultMap }, "trendingManga": trendingManga.flatMap { (value: TrendingManga) -> ResultMap in value.resultMap }, "trendingRomanceManga": trendingRomanceManga.flatMap { (value: TrendingRomanceManga) -> ResultMap in value.resultMap }, "popularCurrentSeasonAnime": popularCurrentSeasonAnime.flatMap { (value: PopularCurrentSeasonAnime) -> ResultMap in value.resultMap }, "popularNextSeasonAnime": popularNextSeasonAnime.flatMap { (value: PopularNextSeasonAnime) -> ResultMap in value.resultMap }, "allTimeTopAnime": allTimeTopAnime.flatMap { (value: AllTimeTopAnime) -> ResultMap in value.resultMap }, "allTimeTopManga": allTimeTopManga.flatMap { (value: AllTimeTopManga) -> ResultMap in value.resultMap }])
    }

    public var trendingAnime: TrendingAnime? {
      get {
        return (resultMap["trendingAnime"] as? ResultMap).flatMap { TrendingAnime(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "trendingAnime")
      }
    }

    public var trendingManga: TrendingManga? {
      get {
        return (resultMap["trendingManga"] as? ResultMap).flatMap { TrendingManga(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "trendingManga")
      }
    }

    public var trendingRomanceManga: TrendingRomanceManga? {
      get {
        return (resultMap["trendingRomanceManga"] as? ResultMap).flatMap { TrendingRomanceManga(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "trendingRomanceManga")
      }
    }

    public var popularCurrentSeasonAnime: PopularCurrentSeasonAnime? {
      get {
        return (resultMap["popularCurrentSeasonAnime"] as? ResultMap).flatMap { PopularCurrentSeasonAnime(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "popularCurrentSeasonAnime")
      }
    }

    public var popularNextSeasonAnime: PopularNextSeasonAnime? {
      get {
        return (resultMap["popularNextSeasonAnime"] as? ResultMap).flatMap { PopularNextSeasonAnime(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "popularNextSeasonAnime")
      }
    }

    public var allTimeTopAnime: AllTimeTopAnime? {
      get {
        return (resultMap["allTimeTopAnime"] as? ResultMap).flatMap { AllTimeTopAnime(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allTimeTopAnime")
      }
    }

    public var allTimeTopManga: AllTimeTopManga? {
      get {
        return (resultMap["allTimeTopManga"] as? ResultMap).flatMap { AllTimeTopManga(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allTimeTopManga")
      }
    }

    public struct TrendingAnime: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["TRENDING_DESC"], "genre": nil, "type": "ANIME", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }

    public struct TrendingManga: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["TRENDING_DESC"], "genre": nil, "type": "MANGA", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }

    public struct TrendingRomanceManga: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["TRENDING_DESC"], "genre": "Romance", "type": "MANGA", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }

    public struct PopularCurrentSeasonAnime: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["POPULARITY_DESC"], "genre": nil, "type": "ANIME", "seasonYear": GraphQLVariable("currentSeasonYear"), "season": GraphQLVariable("currentSeason"), "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }

    public struct PopularNextSeasonAnime: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["POPULARITY_DESC"], "genre": nil, "type": "ANIME", "seasonYear": GraphQLVariable("nextSeasonYear"), "season": GraphQLVariable("nextSeason"), "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }

    public struct AllTimeTopAnime: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["SCORE_DESC"], "genre": nil, "type": "ANIME", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }

    public struct AllTimeTopManga: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("media", arguments: ["sort": ["SCORE_DESC"], "genre": nil, "type": "MANGA", "isAdult": false], type: .list(.object(Medium.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(media: [Medium?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var media: [Medium?]? {
        get {
          return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
        }
      }

      public struct Medium: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Media"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ShortMediaDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var shortMediaDetails: ShortMediaDetails {
            get {
              return ShortMediaDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class GetThreadsByMediaCatIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetThreadsByMediaCatId($id: Int, $sort: [ThreadSort]) {
      Page(page: 1, perPage: 10) {
        __typename
        pageInfo {
          __typename
          ...PageInfoDetails
        }
        threads(mediaCategoryId: $id, sort: $sort) {
          __typename
          ...ThreadDetails
        }
      }
    }
    """

  public let operationName: String = "GetThreadsByMediaCatId"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + PageInfoDetails.fragmentDefinition)
    document.append("\n" + ThreadDetails.fragmentDefinition)
    document.append("\n" + UserDetails.fragmentDefinition)
    return document
  }

  public var id: Int?
  public var sort: [ThreadSort?]?

  public init(id: Int? = nil, sort: [ThreadSort?]? = nil) {
    self.id = id
    self.sort = sort
  }

  public var variables: GraphQLMap? {
    return ["id": id, "sort": sort]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["page": 1, "perPage": 10], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageInfo", type: .object(PageInfo.selections)),
          GraphQLField("threads", arguments: ["mediaCategoryId": GraphQLVariable("id"), "sort": GraphQLVariable("sort")], type: .list(.object(Thread.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pageInfo: PageInfo? = nil, threads: [Thread?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "threads": threads.flatMap { (value: [Thread?]) -> [ResultMap?] in value.map { (value: Thread?) -> ResultMap? in value.flatMap { (value: Thread) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The pagination information
      public var pageInfo: PageInfo? {
        get {
          return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
        }
      }

      public var threads: [Thread?]? {
        get {
          return (resultMap["threads"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Thread?] in value.map { (value: ResultMap?) -> Thread? in value.flatMap { (value: ResultMap) -> Thread in Thread(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Thread?]) -> [ResultMap?] in value.map { (value: Thread?) -> ResultMap? in value.flatMap { (value: Thread) -> ResultMap in value.resultMap } } }, forKey: "threads")
        }
      }

      public struct PageInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PageInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(PageInfoDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(total: Int? = nil, perPage: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "perPage": perPage, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var pageInfoDetails: PageInfoDetails {
            get {
              return PageInfoDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }

      public struct Thread: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Thread"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ThreadDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var threadDetails: ThreadDetails {
            get {
              return ThreadDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class GetThreadCommentsByThreadIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetThreadCommentsByThreadId($threadId: Int) {
      Page(page: 1, perPage: 15) {
        __typename
        pageInfo {
          __typename
          total
          perPage
          currentPage
          lastPage
          hasNextPage
        }
        threadComments(threadId: $threadId) {
          __typename
          id
          threadId
          comment
          isLiked
          likeCount
          createdAt
          user {
            __typename
            id
            name
            donatorTier
            donatorBadge
            avatar {
              __typename
              large
            }
          }
          childComments
        }
      }
    }
    """

  public let operationName: String = "GetThreadCommentsByThreadId"

  public var threadId: Int?

  public init(threadId: Int? = nil) {
    self.threadId = threadId
  }

  public var variables: GraphQLMap? {
    return ["threadId": threadId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["page": 1, "perPage": 15], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageInfo", type: .object(PageInfo.selections)),
          GraphQLField("threadComments", arguments: ["threadId": GraphQLVariable("threadId")], type: .list(.object(ThreadComment.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pageInfo: PageInfo? = nil, threadComments: [ThreadComment?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "threadComments": threadComments.flatMap { (value: [ThreadComment?]) -> [ResultMap?] in value.map { (value: ThreadComment?) -> ResultMap? in value.flatMap { (value: ThreadComment) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The pagination information
      public var pageInfo: PageInfo? {
        get {
          return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
        }
      }

      public var threadComments: [ThreadComment?]? {
        get {
          return (resultMap["threadComments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ThreadComment?] in value.map { (value: ResultMap?) -> ThreadComment? in value.flatMap { (value: ResultMap) -> ThreadComment in ThreadComment(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [ThreadComment?]) -> [ResultMap?] in value.map { (value: ThreadComment?) -> ResultMap? in value.flatMap { (value: ThreadComment) -> ResultMap in value.resultMap } } }, forKey: "threadComments")
        }
      }

      public struct PageInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PageInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("total", type: .scalar(Int.self)),
            GraphQLField("perPage", type: .scalar(Int.self)),
            GraphQLField("currentPage", type: .scalar(Int.self)),
            GraphQLField("lastPage", type: .scalar(Int.self)),
            GraphQLField("hasNextPage", type: .scalar(Bool.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(total: Int? = nil, perPage: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "perPage": perPage, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The total number of items
        public var total: Int? {
          get {
            return resultMap["total"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "total")
          }
        }

        /// The count on a page
        public var perPage: Int? {
          get {
            return resultMap["perPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "perPage")
          }
        }

        /// The current page
        public var currentPage: Int? {
          get {
            return resultMap["currentPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "currentPage")
          }
        }

        /// The last page
        public var lastPage: Int? {
          get {
            return resultMap["lastPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastPage")
          }
        }

        /// If there is another page
        public var hasNextPage: Bool? {
          get {
            return resultMap["hasNextPage"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNextPage")
          }
        }
      }

      public struct ThreadComment: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ThreadComment"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("threadId", type: .scalar(Int.self)),
            GraphQLField("comment", type: .scalar(String.self)),
            GraphQLField("isLiked", type: .scalar(Bool.self)),
            GraphQLField("likeCount", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("user", type: .object(User.selections)),
            GraphQLField("childComments", type: .scalar(Json.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, threadId: Int? = nil, comment: String? = nil, isLiked: Bool? = nil, likeCount: Int, createdAt: Int, user: User? = nil, childComments: Json? = nil) {
          self.init(unsafeResultMap: ["__typename": "ThreadComment", "id": id, "threadId": threadId, "comment": comment, "isLiked": isLiked, "likeCount": likeCount, "createdAt": createdAt, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "childComments": childComments])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the comment
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The id of thread the comment belongs to
        public var threadId: Int? {
          get {
            return resultMap["threadId"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "threadId")
          }
        }

        /// The text content of the comment (Markdown)
        public var comment: String? {
          get {
            return resultMap["comment"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "comment")
          }
        }

        /// If the currently authenticated user liked the comment
        public var isLiked: Bool? {
          get {
            return resultMap["isLiked"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isLiked")
          }
        }

        /// The amount of likes the comment has
        public var likeCount: Int {
          get {
            return resultMap["likeCount"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "likeCount")
          }
        }

        /// The time of the comments creation
        public var createdAt: Int {
          get {
            return resultMap["createdAt"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        /// The user who created the comment
        public var user: User? {
          get {
            return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "user")
          }
        }

        /// The comment's child reply comments
        public var childComments: Json? {
          get {
            return resultMap["childComments"] as? Json
          }
          set {
            resultMap.updateValue(newValue, forKey: "childComments")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("name", type: .nonNull(.scalar(String.self))),
              GraphQLField("donatorTier", type: .scalar(Int.self)),
              GraphQLField("donatorBadge", type: .scalar(String.self)),
              GraphQLField("avatar", type: .object(Avatar.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, name: String, donatorTier: Int? = nil, donatorBadge: String? = nil, avatar: Avatar? = nil) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "donatorTier": donatorTier, "donatorBadge": donatorBadge, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the user
          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The name of the user
          public var name: String {
            get {
              return resultMap["name"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// The donation tier of the user
          public var donatorTier: Int? {
            get {
              return resultMap["donatorTier"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "donatorTier")
            }
          }

          /// Custom donation badge text
          public var donatorBadge: String? {
            get {
              return resultMap["donatorBadge"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "donatorBadge")
            }
          }

          /// The user's avatar images
          public var avatar: Avatar? {
            get {
              return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
            }
          }

          public struct Avatar: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["UserAvatar"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("large", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(large: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The avatar of user at its largest size
            public var large: String? {
              get {
                return resultMap["large"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "large")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetLatestActiveThreadsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetLatestActiveThreads($page: Int, $perPage: Int) {
      Page(page: $page, perPage: $perPage) {
        __typename
        pageInfo {
          __typename
          total
          perPage
          currentPage
          lastPage
          hasNextPage
        }
        threads(sort: REPLIED_AT_DESC) {
          __typename
          ...ThreadDetails
        }
      }
    }
    """

  public let operationName: String = "GetLatestActiveThreads"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + ThreadDetails.fragmentDefinition)
    document.append("\n" + UserDetails.fragmentDefinition)
    return document
  }

  public var page: Int?
  public var perPage: Int?

  public init(page: Int? = nil, perPage: Int? = nil) {
    self.page = page
    self.perPage = perPage
  }

  public var variables: GraphQLMap? {
    return ["page": page, "perPage": perPage]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["page": GraphQLVariable("page"), "perPage": GraphQLVariable("perPage")], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageInfo", type: .object(PageInfo.selections)),
          GraphQLField("threads", arguments: ["sort": "REPLIED_AT_DESC"], type: .list(.object(Thread.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pageInfo: PageInfo? = nil, threads: [Thread?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "threads": threads.flatMap { (value: [Thread?]) -> [ResultMap?] in value.map { (value: Thread?) -> ResultMap? in value.flatMap { (value: Thread) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The pagination information
      public var pageInfo: PageInfo? {
        get {
          return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
        }
      }

      public var threads: [Thread?]? {
        get {
          return (resultMap["threads"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Thread?] in value.map { (value: ResultMap?) -> Thread? in value.flatMap { (value: ResultMap) -> Thread in Thread(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Thread?]) -> [ResultMap?] in value.map { (value: Thread?) -> ResultMap? in value.flatMap { (value: Thread) -> ResultMap in value.resultMap } } }, forKey: "threads")
        }
      }

      public struct PageInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PageInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("total", type: .scalar(Int.self)),
            GraphQLField("perPage", type: .scalar(Int.self)),
            GraphQLField("currentPage", type: .scalar(Int.self)),
            GraphQLField("lastPage", type: .scalar(Int.self)),
            GraphQLField("hasNextPage", type: .scalar(Bool.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(total: Int? = nil, perPage: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "perPage": perPage, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The total number of items
        public var total: Int? {
          get {
            return resultMap["total"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "total")
          }
        }

        /// The count on a page
        public var perPage: Int? {
          get {
            return resultMap["perPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "perPage")
          }
        }

        /// The current page
        public var currentPage: Int? {
          get {
            return resultMap["currentPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "currentPage")
          }
        }

        /// The last page
        public var lastPage: Int? {
          get {
            return resultMap["lastPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastPage")
          }
        }

        /// If there is another page
        public var hasNextPage: Bool? {
          get {
            return resultMap["hasNextPage"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNextPage")
          }
        }
      }

      public struct Thread: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Thread"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ThreadDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var threadDetails: ThreadDetails {
            get {
              return ThreadDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class GetRecentReviewsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetRecentReviews($page: Int, $perPage: Int) {
      Page(page: $page, perPage: $perPage) {
        __typename
        pageInfo {
          __typename
          total
          perPage
          currentPage
          lastPage
          hasNextPage
        }
        reviews(sort: ID_DESC) {
          __typename
          id
          createdAt
          updatedAt
          user {
            __typename
            ...UserDetails
          }
          userId
          score
          rating
          ratingAmount
          userRating
          summary
          media {
            __typename
            id
            title {
              __typename
              userPreferred
            }
            type
            bannerImage
          }
        }
      }
    }
    """

  public let operationName: String = "GetRecentReviews"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + UserDetails.fragmentDefinition)
    return document
  }

  public var page: Int?
  public var perPage: Int?

  public init(page: Int? = nil, perPage: Int? = nil) {
    self.page = page
    self.perPage = perPage
  }

  public var variables: GraphQLMap? {
    return ["page": page, "perPage": perPage]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["page": GraphQLVariable("page"), "perPage": GraphQLVariable("perPage")], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageInfo", type: .object(PageInfo.selections)),
          GraphQLField("reviews", arguments: ["sort": "ID_DESC"], type: .list(.object(Review.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pageInfo: PageInfo? = nil, reviews: [Review?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "reviews": reviews.flatMap { (value: [Review?]) -> [ResultMap?] in value.map { (value: Review?) -> ResultMap? in value.flatMap { (value: Review) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The pagination information
      public var pageInfo: PageInfo? {
        get {
          return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
        }
      }

      public var reviews: [Review?]? {
        get {
          return (resultMap["reviews"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Review?] in value.map { (value: ResultMap?) -> Review? in value.flatMap { (value: ResultMap) -> Review in Review(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Review?]) -> [ResultMap?] in value.map { (value: Review?) -> ResultMap? in value.flatMap { (value: Review) -> ResultMap in value.resultMap } } }, forKey: "reviews")
        }
      }

      public struct PageInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PageInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("total", type: .scalar(Int.self)),
            GraphQLField("perPage", type: .scalar(Int.self)),
            GraphQLField("currentPage", type: .scalar(Int.self)),
            GraphQLField("lastPage", type: .scalar(Int.self)),
            GraphQLField("hasNextPage", type: .scalar(Bool.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(total: Int? = nil, perPage: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "perPage": perPage, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The total number of items
        public var total: Int? {
          get {
            return resultMap["total"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "total")
          }
        }

        /// The count on a page
        public var perPage: Int? {
          get {
            return resultMap["perPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "perPage")
          }
        }

        /// The current page
        public var currentPage: Int? {
          get {
            return resultMap["currentPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "currentPage")
          }
        }

        /// The last page
        public var lastPage: Int? {
          get {
            return resultMap["lastPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastPage")
          }
        }

        /// If there is another page
        public var hasNextPage: Bool? {
          get {
            return resultMap["hasNextPage"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNextPage")
          }
        }
      }

      public struct Review: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Review"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
            GraphQLField("user", type: .object(User.selections)),
            GraphQLField("userId", type: .nonNull(.scalar(Int.self))),
            GraphQLField("score", type: .scalar(Int.self)),
            GraphQLField("rating", type: .scalar(Int.self)),
            GraphQLField("ratingAmount", type: .scalar(Int.self)),
            GraphQLField("userRating", type: .scalar(ReviewRating.self)),
            GraphQLField("summary", type: .scalar(String.self)),
            GraphQLField("media", type: .object(Medium.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, createdAt: Int, updatedAt: Int, user: User? = nil, userId: Int, score: Int? = nil, rating: Int? = nil, ratingAmount: Int? = nil, userRating: ReviewRating? = nil, summary: String? = nil, media: Medium? = nil) {
          self.init(unsafeResultMap: ["__typename": "Review", "id": id, "createdAt": createdAt, "updatedAt": updatedAt, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "userId": userId, "score": score, "rating": rating, "ratingAmount": ratingAmount, "userRating": userRating, "summary": summary, "media": media.flatMap { (value: Medium) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the review
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The time of the thread creation
        public var createdAt: Int {
          get {
            return resultMap["createdAt"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        /// The time of the thread last update
        public var updatedAt: Int {
          get {
            return resultMap["updatedAt"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        /// The creator of the review
        public var user: User? {
          get {
            return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "user")
          }
        }

        /// The id of the review's creator
        public var userId: Int {
          get {
            return resultMap["userId"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "userId")
          }
        }

        /// The review score of the media
        public var score: Int? {
          get {
            return resultMap["score"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "score")
          }
        }

        /// The total user rating of the review
        public var rating: Int? {
          get {
            return resultMap["rating"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "rating")
          }
        }

        /// The amount of user ratings of the review
        public var ratingAmount: Int? {
          get {
            return resultMap["ratingAmount"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "ratingAmount")
          }
        }

        /// The rating of the review by currently authenticated user
        public var userRating: ReviewRating? {
          get {
            return resultMap["userRating"] as? ReviewRating
          }
          set {
            resultMap.updateValue(newValue, forKey: "userRating")
          }
        }

        /// A short summary of the review
        public var summary: String? {
          get {
            return resultMap["summary"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "summary")
          }
        }

        /// The media the review is of
        public var media: Medium? {
          get {
            return (resultMap["media"] as? ResultMap).flatMap { Medium(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "media")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(UserDetails.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var userDetails: UserDetails {
              get {
                return UserDetails(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Media"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("title", type: .object(Title.selections)),
              GraphQLField("type", type: .scalar(MediaType.self)),
              GraphQLField("bannerImage", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, title: Title? = nil, type: MediaType? = nil, bannerImage: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Media", "id": id, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "type": type, "bannerImage": bannerImage])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the media
          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The official titles of the media in various languages
          public var title: Title? {
            get {
              return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "title")
            }
          }

          /// The type of the media; anime or manga
          public var type: MediaType? {
            get {
              return resultMap["type"] as? MediaType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          /// The banner image of the media
          public var bannerImage: String? {
            get {
              return resultMap["bannerImage"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "bannerImage")
            }
          }

          public struct Title: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaTitle"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("userPreferred", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(userPreferred: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "MediaTitle", "userPreferred": userPreferred])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The currently authenticated users preferred title language. Default romaji for non-authenticated
            public var userPreferred: String? {
              get {
                return resultMap["userPreferred"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "userPreferred")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetUserActivitiesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUserActivities($isFollowing: Boolean = true, $hasReplies: Boolean = false, $activityType: ActivityType, $page: Int) {
      Page(page: $page, perPage: 25) {
        __typename
        pageInfo {
          __typename
          total
          perPage
          currentPage
          lastPage
          hasNextPage
        }
        activities(
          isFollowing: $isFollowing
          type: $activityType
          hasRepliesOrTypeText: $hasReplies
          type_in: [TEXT, ANIME_LIST, MANGA_LIST]
          sort: ID_DESC
        ) {
          __typename
          ... on TextActivity {
            __typename
            id
            userId
            type
            replyCount
            text
            isLocked
            isSubscribed
            isLiked
            likeCount
            createdAt
            user {
              __typename
              id
              name
              donatorTier
              donatorBadge
              moderatorRoles
              avatar {
                __typename
                large
              }
            }
          }
          ... on ListActivity {
            __typename
            id
            userId
            type
            status
            progress
            replyCount
            isLocked
            isSubscribed
            isLiked
            likeCount
            createdAt
            user {
              __typename
              id
              name
              donatorTier
              donatorBadge
              avatar {
                __typename
                large
              }
            }
            media {
              __typename
              id
              idMal
              type
              status
              isAdult
              title {
                __typename
                userPreferred
              }
              bannerImage
              coverImage {
                __typename
                large
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "GetUserActivities"

  public var isFollowing: Bool?
  public var hasReplies: Bool?
  public var activityType: ActivityType?
  public var page: Int?

  public init(isFollowing: Bool? = nil, hasReplies: Bool? = nil, activityType: ActivityType? = nil, page: Int? = nil) {
    self.isFollowing = isFollowing
    self.hasReplies = hasReplies
    self.activityType = activityType
    self.page = page
  }

  public var variables: GraphQLMap? {
    return ["isFollowing": isFollowing, "hasReplies": hasReplies, "activityType": activityType, "page": page]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Page", arguments: ["page": GraphQLVariable("page"), "perPage": 25], type: .object(Page.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(page: Page? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Page": page.flatMap { (value: Page) -> ResultMap in value.resultMap }])
    }

    public var page: Page? {
      get {
        return (resultMap["Page"] as? ResultMap).flatMap { Page(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Page")
      }
    }

    public struct Page: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Page"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageInfo", type: .object(PageInfo.selections)),
          GraphQLField("activities", arguments: ["isFollowing": GraphQLVariable("isFollowing"), "type": GraphQLVariable("activityType"), "hasRepliesOrTypeText": GraphQLVariable("hasReplies"), "type_in": ["TEXT", "ANIME_LIST", "MANGA_LIST"], "sort": "ID_DESC"], type: .list(.object(Activity.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pageInfo: PageInfo? = nil, activities: [Activity?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Page", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "activities": activities.flatMap { (value: [Activity?]) -> [ResultMap?] in value.map { (value: Activity?) -> ResultMap? in value.flatMap { (value: Activity) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The pagination information
      public var pageInfo: PageInfo? {
        get {
          return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
        }
      }

      public var activities: [Activity?]? {
        get {
          return (resultMap["activities"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Activity?] in value.map { (value: ResultMap?) -> Activity? in value.flatMap { (value: ResultMap) -> Activity in Activity(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Activity?]) -> [ResultMap?] in value.map { (value: Activity?) -> ResultMap? in value.flatMap { (value: Activity) -> ResultMap in value.resultMap } } }, forKey: "activities")
        }
      }

      public struct PageInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PageInfo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("total", type: .scalar(Int.self)),
            GraphQLField("perPage", type: .scalar(Int.self)),
            GraphQLField("currentPage", type: .scalar(Int.self)),
            GraphQLField("lastPage", type: .scalar(Int.self)),
            GraphQLField("hasNextPage", type: .scalar(Bool.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(total: Int? = nil, perPage: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "perPage": perPage, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The total number of items
        public var total: Int? {
          get {
            return resultMap["total"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "total")
          }
        }

        /// The count on a page
        public var perPage: Int? {
          get {
            return resultMap["perPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "perPage")
          }
        }

        /// The current page
        public var currentPage: Int? {
          get {
            return resultMap["currentPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "currentPage")
          }
        }

        /// The last page
        public var lastPage: Int? {
          get {
            return resultMap["lastPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastPage")
          }
        }

        /// If there is another page
        public var hasNextPage: Bool? {
          get {
            return resultMap["hasNextPage"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasNextPage")
          }
        }
      }

      public struct Activity: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["TextActivity", "ListActivity", "MessageActivity"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["TextActivity": AsTextActivity.selections, "ListActivity": AsListActivity.selections],
              default: [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              ]
            )
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public static func makeMessageActivity() -> Activity {
          return Activity(unsafeResultMap: ["__typename": "MessageActivity"])
        }

        public static func makeTextActivity(id: Int, userId: Int? = nil, type: ActivityType? = nil, replyCount: Int, text: String? = nil, isLocked: Bool? = nil, isSubscribed: Bool? = nil, isLiked: Bool? = nil, likeCount: Int, createdAt: Int, user: AsTextActivity.User? = nil) -> Activity {
          return Activity(unsafeResultMap: ["__typename": "TextActivity", "id": id, "userId": userId, "type": type, "replyCount": replyCount, "text": text, "isLocked": isLocked, "isSubscribed": isSubscribed, "isLiked": isLiked, "likeCount": likeCount, "createdAt": createdAt, "user": user.flatMap { (value: AsTextActivity.User) -> ResultMap in value.resultMap }])
        }

        public static func makeListActivity(id: Int, userId: Int? = nil, type: ActivityType? = nil, status: String? = nil, progress: String? = nil, replyCount: Int, isLocked: Bool? = nil, isSubscribed: Bool? = nil, isLiked: Bool? = nil, likeCount: Int, createdAt: Int, user: AsListActivity.User? = nil, media: AsListActivity.Medium? = nil) -> Activity {
          return Activity(unsafeResultMap: ["__typename": "ListActivity", "id": id, "userId": userId, "type": type, "status": status, "progress": progress, "replyCount": replyCount, "isLocked": isLocked, "isSubscribed": isSubscribed, "isLiked": isLiked, "likeCount": likeCount, "createdAt": createdAt, "user": user.flatMap { (value: AsListActivity.User) -> ResultMap in value.resultMap }, "media": media.flatMap { (value: AsListActivity.Medium) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asTextActivity: AsTextActivity? {
          get {
            if !AsTextActivity.possibleTypes.contains(__typename) { return nil }
            return AsTextActivity(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsTextActivity: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["TextActivity"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("userId", type: .scalar(Int.self)),
              GraphQLField("type", type: .scalar(ActivityType.self)),
              GraphQLField("replyCount", type: .nonNull(.scalar(Int.self))),
              GraphQLField("text", type: .scalar(String.self)),
              GraphQLField("isLocked", type: .scalar(Bool.self)),
              GraphQLField("isSubscribed", type: .scalar(Bool.self)),
              GraphQLField("isLiked", type: .scalar(Bool.self)),
              GraphQLField("likeCount", type: .nonNull(.scalar(Int.self))),
              GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
              GraphQLField("user", type: .object(User.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, userId: Int? = nil, type: ActivityType? = nil, replyCount: Int, text: String? = nil, isLocked: Bool? = nil, isSubscribed: Bool? = nil, isLiked: Bool? = nil, likeCount: Int, createdAt: Int, user: User? = nil) {
            self.init(unsafeResultMap: ["__typename": "TextActivity", "id": id, "userId": userId, "type": type, "replyCount": replyCount, "text": text, "isLocked": isLocked, "isSubscribed": isSubscribed, "isLiked": isLiked, "likeCount": likeCount, "createdAt": createdAt, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the activity
          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The user id of the activity's creator
          public var userId: Int? {
            get {
              return resultMap["userId"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "userId")
            }
          }

          /// The type of activity
          public var type: ActivityType? {
            get {
              return resultMap["type"] as? ActivityType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          /// The number of activity replies
          public var replyCount: Int {
            get {
              return resultMap["replyCount"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "replyCount")
            }
          }

          /// The status text (Markdown)
          public var text: String? {
            get {
              return resultMap["text"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "text")
            }
          }

          /// If the activity is locked and can receive replies
          public var isLocked: Bool? {
            get {
              return resultMap["isLocked"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isLocked")
            }
          }

          /// If the currently authenticated user is subscribed to the activity
          public var isSubscribed: Bool? {
            get {
              return resultMap["isSubscribed"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isSubscribed")
            }
          }

          /// If the currently authenticated user liked the activity
          public var isLiked: Bool? {
            get {
              return resultMap["isLiked"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isLiked")
            }
          }

          /// The amount of likes the activity has
          public var likeCount: Int {
            get {
              return resultMap["likeCount"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "likeCount")
            }
          }

          /// The time the activity was created at
          public var createdAt: Int {
            get {
              return resultMap["createdAt"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          /// The user who created the activity
          public var user: User? {
            get {
              return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "user")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("donatorTier", type: .scalar(Int.self)),
                GraphQLField("donatorBadge", type: .scalar(String.self)),
                GraphQLField("moderatorRoles", type: .list(.scalar(ModRole.self))),
                GraphQLField("avatar", type: .object(Avatar.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: String, donatorTier: Int? = nil, donatorBadge: String? = nil, moderatorRoles: [ModRole?]? = nil, avatar: Avatar? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "donatorTier": donatorTier, "donatorBadge": donatorBadge, "moderatorRoles": moderatorRoles, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the user
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The name of the user
            public var name: String {
              get {
                return resultMap["name"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// The donation tier of the user
            public var donatorTier: Int? {
              get {
                return resultMap["donatorTier"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "donatorTier")
              }
            }

            /// Custom donation badge text
            public var donatorBadge: String? {
              get {
                return resultMap["donatorBadge"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "donatorBadge")
              }
            }

            /// The user's moderator roles if they are a site moderator
            public var moderatorRoles: [ModRole?]? {
              get {
                return resultMap["moderatorRoles"] as? [ModRole?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "moderatorRoles")
              }
            }

            /// The user's avatar images
            public var avatar: Avatar? {
              get {
                return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
              }
            }

            public struct Avatar: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["UserAvatar"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The avatar of user at its largest size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }
        }

        public var asListActivity: AsListActivity? {
          get {
            if !AsListActivity.possibleTypes.contains(__typename) { return nil }
            return AsListActivity(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsListActivity: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ListActivity"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(Int.self))),
              GraphQLField("userId", type: .scalar(Int.self)),
              GraphQLField("type", type: .scalar(ActivityType.self)),
              GraphQLField("status", type: .scalar(String.self)),
              GraphQLField("progress", type: .scalar(String.self)),
              GraphQLField("replyCount", type: .nonNull(.scalar(Int.self))),
              GraphQLField("isLocked", type: .scalar(Bool.self)),
              GraphQLField("isSubscribed", type: .scalar(Bool.self)),
              GraphQLField("isLiked", type: .scalar(Bool.self)),
              GraphQLField("likeCount", type: .nonNull(.scalar(Int.self))),
              GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
              GraphQLField("user", type: .object(User.selections)),
              GraphQLField("media", type: .object(Medium.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: Int, userId: Int? = nil, type: ActivityType? = nil, status: String? = nil, progress: String? = nil, replyCount: Int, isLocked: Bool? = nil, isSubscribed: Bool? = nil, isLiked: Bool? = nil, likeCount: Int, createdAt: Int, user: User? = nil, media: Medium? = nil) {
            self.init(unsafeResultMap: ["__typename": "ListActivity", "id": id, "userId": userId, "type": type, "status": status, "progress": progress, "replyCount": replyCount, "isLocked": isLocked, "isSubscribed": isSubscribed, "isLiked": isLiked, "likeCount": likeCount, "createdAt": createdAt, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "media": media.flatMap { (value: Medium) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the activity
          public var id: Int {
            get {
              return resultMap["id"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The user id of the activity's creator
          public var userId: Int? {
            get {
              return resultMap["userId"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "userId")
            }
          }

          /// The type of activity
          public var type: ActivityType? {
            get {
              return resultMap["type"] as? ActivityType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          /// The list item's textual status
          public var status: String? {
            get {
              return resultMap["status"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "status")
            }
          }

          /// The list progress made
          public var progress: String? {
            get {
              return resultMap["progress"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "progress")
            }
          }

          /// The number of activity replies
          public var replyCount: Int {
            get {
              return resultMap["replyCount"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "replyCount")
            }
          }

          /// If the activity is locked and can receive replies
          public var isLocked: Bool? {
            get {
              return resultMap["isLocked"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isLocked")
            }
          }

          /// If the currently authenticated user is subscribed to the activity
          public var isSubscribed: Bool? {
            get {
              return resultMap["isSubscribed"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isSubscribed")
            }
          }

          /// If the currently authenticated user liked the activity
          public var isLiked: Bool? {
            get {
              return resultMap["isLiked"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "isLiked")
            }
          }

          /// The amount of likes the activity has
          public var likeCount: Int {
            get {
              return resultMap["likeCount"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "likeCount")
            }
          }

          /// The time the activity was created at
          public var createdAt: Int {
            get {
              return resultMap["createdAt"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          /// The owner of the activity
          public var user: User? {
            get {
              return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "user")
            }
          }

          /// The associated media to the activity update
          public var media: Medium? {
            get {
              return (resultMap["media"] as? ResultMap).flatMap { Medium(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "media")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("donatorTier", type: .scalar(Int.self)),
                GraphQLField("donatorBadge", type: .scalar(String.self)),
                GraphQLField("avatar", type: .object(Avatar.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, name: String, donatorTier: Int? = nil, donatorBadge: String? = nil, avatar: Avatar? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "donatorTier": donatorTier, "donatorBadge": donatorBadge, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the user
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The name of the user
            public var name: String {
              get {
                return resultMap["name"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// The donation tier of the user
            public var donatorTier: Int? {
              get {
                return resultMap["donatorTier"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "donatorTier")
              }
            }

            /// Custom donation badge text
            public var donatorBadge: String? {
              get {
                return resultMap["donatorBadge"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "donatorBadge")
              }
            }

            /// The user's avatar images
            public var avatar: Avatar? {
              get {
                return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
              }
            }

            public struct Avatar: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["UserAvatar"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The avatar of user at its largest size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }

          public struct Medium: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Media"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(Int.self))),
                GraphQLField("idMal", type: .scalar(Int.self)),
                GraphQLField("type", type: .scalar(MediaType.self)),
                GraphQLField("status", type: .scalar(MediaStatus.self)),
                GraphQLField("isAdult", type: .scalar(Bool.self)),
                GraphQLField("title", type: .object(Title.selections)),
                GraphQLField("bannerImage", type: .scalar(String.self)),
                GraphQLField("coverImage", type: .object(CoverImage.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: Int, idMal: Int? = nil, type: MediaType? = nil, status: MediaStatus? = nil, isAdult: Bool? = nil, title: Title? = nil, bannerImage: String? = nil, coverImage: CoverImage? = nil) {
              self.init(unsafeResultMap: ["__typename": "Media", "id": id, "idMal": idMal, "type": type, "status": status, "isAdult": isAdult, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "bannerImage": bannerImage, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The id of the media
            public var id: Int {
              get {
                return resultMap["id"]! as! Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The mal id of the media
            public var idMal: Int? {
              get {
                return resultMap["idMal"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "idMal")
              }
            }

            /// The type of the media; anime or manga
            public var type: MediaType? {
              get {
                return resultMap["type"] as? MediaType
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            /// The current releasing status of the media
            public var status: MediaStatus? {
              get {
                return resultMap["status"] as? MediaStatus
              }
              set {
                resultMap.updateValue(newValue, forKey: "status")
              }
            }

            /// If the media is intended only for 18+ adult audiences
            public var isAdult: Bool? {
              get {
                return resultMap["isAdult"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "isAdult")
              }
            }

            /// The official titles of the media in various languages
            public var title: Title? {
              get {
                return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "title")
              }
            }

            /// The banner image of the media
            public var bannerImage: String? {
              get {
                return resultMap["bannerImage"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "bannerImage")
              }
            }

            /// The cover images of the media
            public var coverImage: CoverImage? {
              get {
                return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
              }
            }

            public struct Title: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MediaTitle"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("userPreferred", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(userPreferred: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "MediaTitle", "userPreferred": userPreferred])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The currently authenticated users preferred title language. Default romaji for non-authenticated
              public var userPreferred: String? {
                get {
                  return resultMap["userPreferred"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "userPreferred")
                }
              }
            }

            public struct CoverImage: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["MediaCoverImage"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("large", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(large: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "large": large])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The cover image url of the media at a large size
              public var large: String? {
                get {
                  return resultMap["large"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "large")
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class ViewerDetailQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ViewerDetail {
      Viewer {
        __typename
        id
        name
        about
        avatar {
          __typename
          large
        }
        bannerImage
        unreadNotificationCount
        donatorTier
        donatorBadge
        moderatorRoles
        options {
          __typename
          titleLanguage
          airingNotifications
          displayAdultContent
          profileColor
          notificationOptions {
            __typename
            type
            enabled
          }
        }
        mediaListOptions {
          __typename
          scoreFormat
          rowOrder
          animeList {
            __typename
            customLists
            sectionOrder
            splitCompletedSectionByFormat
            advancedScoring
            advancedScoringEnabled
          }
          mangaList {
            __typename
            customLists
            sectionOrder
            splitCompletedSectionByFormat
            advancedScoring
            advancedScoringEnabled
          }
        }
      }
    }
    """

  public let operationName: String = "ViewerDetail"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Viewer", type: .object(Viewer.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(viewer: Viewer? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "Viewer": viewer.flatMap { (value: Viewer) -> ResultMap in value.resultMap }])
    }

    /// Get the currently authenticated user
    public var viewer: Viewer? {
      get {
        return (resultMap["Viewer"] as? ResultMap).flatMap { Viewer(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "Viewer")
      }
    }

    public struct Viewer: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("about", type: .scalar(String.self)),
          GraphQLField("avatar", type: .object(Avatar.selections)),
          GraphQLField("bannerImage", type: .scalar(String.self)),
          GraphQLField("unreadNotificationCount", type: .scalar(Int.self)),
          GraphQLField("donatorTier", type: .scalar(Int.self)),
          GraphQLField("donatorBadge", type: .scalar(String.self)),
          GraphQLField("moderatorRoles", type: .list(.scalar(ModRole.self))),
          GraphQLField("options", type: .object(Option.selections)),
          GraphQLField("mediaListOptions", type: .object(MediaListOption.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, name: String, about: String? = nil, avatar: Avatar? = nil, bannerImage: String? = nil, unreadNotificationCount: Int? = nil, donatorTier: Int? = nil, donatorBadge: String? = nil, moderatorRoles: [ModRole?]? = nil, options: Option? = nil, mediaListOptions: MediaListOption? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "about": about, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }, "bannerImage": bannerImage, "unreadNotificationCount": unreadNotificationCount, "donatorTier": donatorTier, "donatorBadge": donatorBadge, "moderatorRoles": moderatorRoles, "options": options.flatMap { (value: Option) -> ResultMap in value.resultMap }, "mediaListOptions": mediaListOptions.flatMap { (value: MediaListOption) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the user
      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The name of the user
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The bio written by user (Markdown)
      public var about: String? {
        get {
          return resultMap["about"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "about")
        }
      }

      /// The user's avatar images
      public var avatar: Avatar? {
        get {
          return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
        }
      }

      /// The user's banner images
      public var bannerImage: String? {
        get {
          return resultMap["bannerImage"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "bannerImage")
        }
      }

      /// The number of unread notifications the user has
      public var unreadNotificationCount: Int? {
        get {
          return resultMap["unreadNotificationCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "unreadNotificationCount")
        }
      }

      /// The donation tier of the user
      public var donatorTier: Int? {
        get {
          return resultMap["donatorTier"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "donatorTier")
        }
      }

      /// Custom donation badge text
      public var donatorBadge: String? {
        get {
          return resultMap["donatorBadge"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "donatorBadge")
        }
      }

      /// The user's moderator roles if they are a site moderator
      public var moderatorRoles: [ModRole?]? {
        get {
          return resultMap["moderatorRoles"] as? [ModRole?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "moderatorRoles")
        }
      }

      /// The user's general options
      public var options: Option? {
        get {
          return (resultMap["options"] as? ResultMap).flatMap { Option(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "options")
        }
      }

      /// The user's media list options
      public var mediaListOptions: MediaListOption? {
        get {
          return (resultMap["mediaListOptions"] as? ResultMap).flatMap { MediaListOption(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "mediaListOptions")
        }
      }

      public struct Avatar: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserAvatar"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("large", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(large: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The avatar of user at its largest size
        public var large: String? {
          get {
            return resultMap["large"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "large")
          }
        }
      }

      public struct Option: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserOptions"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("titleLanguage", type: .scalar(UserTitleLanguage.self)),
            GraphQLField("airingNotifications", type: .scalar(Bool.self)),
            GraphQLField("displayAdultContent", type: .scalar(Bool.self)),
            GraphQLField("profileColor", type: .scalar(String.self)),
            GraphQLField("notificationOptions", type: .list(.object(NotificationOption.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(titleLanguage: UserTitleLanguage? = nil, airingNotifications: Bool? = nil, displayAdultContent: Bool? = nil, profileColor: String? = nil, notificationOptions: [NotificationOption?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserOptions", "titleLanguage": titleLanguage, "airingNotifications": airingNotifications, "displayAdultContent": displayAdultContent, "profileColor": profileColor, "notificationOptions": notificationOptions.flatMap { (value: [NotificationOption?]) -> [ResultMap?] in value.map { (value: NotificationOption?) -> ResultMap? in value.flatMap { (value: NotificationOption) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The language the user wants to see media titles in
        public var titleLanguage: UserTitleLanguage? {
          get {
            return resultMap["titleLanguage"] as? UserTitleLanguage
          }
          set {
            resultMap.updateValue(newValue, forKey: "titleLanguage")
          }
        }

        /// Whether the user receives notifications when a show they are watching aires
        public var airingNotifications: Bool? {
          get {
            return resultMap["airingNotifications"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "airingNotifications")
          }
        }

        /// Whether the user has enabled viewing of 18+ content
        public var displayAdultContent: Bool? {
          get {
            return resultMap["displayAdultContent"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayAdultContent")
          }
        }

        /// Profile highlight color (blue, purple, pink, orange, red, green, gray)
        public var profileColor: String? {
          get {
            return resultMap["profileColor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "profileColor")
          }
        }

        /// Notification options
        public var notificationOptions: [NotificationOption?]? {
          get {
            return (resultMap["notificationOptions"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [NotificationOption?] in value.map { (value: ResultMap?) -> NotificationOption? in value.flatMap { (value: ResultMap) -> NotificationOption in NotificationOption(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [NotificationOption?]) -> [ResultMap?] in value.map { (value: NotificationOption?) -> ResultMap? in value.flatMap { (value: NotificationOption) -> ResultMap in value.resultMap } } }, forKey: "notificationOptions")
          }
        }

        public struct NotificationOption: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["NotificationOption"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(NotificationType.self)),
              GraphQLField("enabled", type: .scalar(Bool.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: NotificationType? = nil, enabled: Bool? = nil) {
            self.init(unsafeResultMap: ["__typename": "NotificationOption", "type": type, "enabled": enabled])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The type of notification
          public var type: NotificationType? {
            get {
              return resultMap["type"] as? NotificationType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          /// Whether this type of notification is enabled
          public var enabled: Bool? {
            get {
              return resultMap["enabled"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "enabled")
            }
          }
        }
      }

      public struct MediaListOption: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaListOptions"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("scoreFormat", type: .scalar(ScoreFormat.self)),
            GraphQLField("rowOrder", type: .scalar(String.self)),
            GraphQLField("animeList", type: .object(AnimeList.selections)),
            GraphQLField("mangaList", type: .object(MangaList.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(scoreFormat: ScoreFormat? = nil, rowOrder: String? = nil, animeList: AnimeList? = nil, mangaList: MangaList? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaListOptions", "scoreFormat": scoreFormat, "rowOrder": rowOrder, "animeList": animeList.flatMap { (value: AnimeList) -> ResultMap in value.resultMap }, "mangaList": mangaList.flatMap { (value: MangaList) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The score format the user is using for media lists
        public var scoreFormat: ScoreFormat? {
          get {
            return resultMap["scoreFormat"] as? ScoreFormat
          }
          set {
            resultMap.updateValue(newValue, forKey: "scoreFormat")
          }
        }

        /// The default order list rows should be displayed in
        public var rowOrder: String? {
          get {
            return resultMap["rowOrder"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rowOrder")
          }
        }

        /// The user's anime list options
        public var animeList: AnimeList? {
          get {
            return (resultMap["animeList"] as? ResultMap).flatMap { AnimeList(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "animeList")
          }
        }

        /// The user's manga list options
        public var mangaList: MangaList? {
          get {
            return (resultMap["mangaList"] as? ResultMap).flatMap { MangaList(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "mangaList")
          }
        }

        public struct AnimeList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaListTypeOptions"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("customLists", type: .list(.scalar(String.self))),
              GraphQLField("sectionOrder", type: .list(.scalar(String.self))),
              GraphQLField("splitCompletedSectionByFormat", type: .scalar(Bool.self)),
              GraphQLField("advancedScoring", type: .list(.scalar(String.self))),
              GraphQLField("advancedScoringEnabled", type: .scalar(Bool.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(customLists: [String?]? = nil, sectionOrder: [String?]? = nil, splitCompletedSectionByFormat: Bool? = nil, advancedScoring: [String?]? = nil, advancedScoringEnabled: Bool? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaListTypeOptions", "customLists": customLists, "sectionOrder": sectionOrder, "splitCompletedSectionByFormat": splitCompletedSectionByFormat, "advancedScoring": advancedScoring, "advancedScoringEnabled": advancedScoringEnabled])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The names of the user's custom lists
          public var customLists: [String?]? {
            get {
              return resultMap["customLists"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "customLists")
            }
          }

          /// The order each list should be displayed in
          public var sectionOrder: [String?]? {
            get {
              return resultMap["sectionOrder"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "sectionOrder")
            }
          }

          /// If the completed sections of the list should be separated by format
          public var splitCompletedSectionByFormat: Bool? {
            get {
              return resultMap["splitCompletedSectionByFormat"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "splitCompletedSectionByFormat")
            }
          }

          /// The names of the user's advanced scoring sections
          public var advancedScoring: [String?]? {
            get {
              return resultMap["advancedScoring"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "advancedScoring")
            }
          }

          /// If advanced scoring is enabled
          public var advancedScoringEnabled: Bool? {
            get {
              return resultMap["advancedScoringEnabled"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "advancedScoringEnabled")
            }
          }
        }

        public struct MangaList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaListTypeOptions"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("customLists", type: .list(.scalar(String.self))),
              GraphQLField("sectionOrder", type: .list(.scalar(String.self))),
              GraphQLField("splitCompletedSectionByFormat", type: .scalar(Bool.self)),
              GraphQLField("advancedScoring", type: .list(.scalar(String.self))),
              GraphQLField("advancedScoringEnabled", type: .scalar(Bool.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(customLists: [String?]? = nil, sectionOrder: [String?]? = nil, splitCompletedSectionByFormat: Bool? = nil, advancedScoring: [String?]? = nil, advancedScoringEnabled: Bool? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaListTypeOptions", "customLists": customLists, "sectionOrder": sectionOrder, "splitCompletedSectionByFormat": splitCompletedSectionByFormat, "advancedScoring": advancedScoring, "advancedScoringEnabled": advancedScoringEnabled])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The names of the user's custom lists
          public var customLists: [String?]? {
            get {
              return resultMap["customLists"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "customLists")
            }
          }

          /// The order each list should be displayed in
          public var sectionOrder: [String?]? {
            get {
              return resultMap["sectionOrder"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "sectionOrder")
            }
          }

          /// If the completed sections of the list should be separated by format
          public var splitCompletedSectionByFormat: Bool? {
            get {
              return resultMap["splitCompletedSectionByFormat"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "splitCompletedSectionByFormat")
            }
          }

          /// The names of the user's advanced scoring sections
          public var advancedScoring: [String?]? {
            get {
              return resultMap["advancedScoring"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "advancedScoring")
            }
          }

          /// If advanced scoring is enabled
          public var advancedScoringEnabled: Bool? {
            get {
              return resultMap["advancedScoringEnabled"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "advancedScoringEnabled")
            }
          }
        }
      }
    }
  }
}

public final class GetMediaListCollectionQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetMediaListCollection($userId: Int, $userName: String, $type: MediaType) {
      MediaListCollection(userId: $userId, userName: $userName, type: $type) {
        __typename
        lists {
          __typename
          name
          isCustomList
          isCompletedList: isSplitCompletedList
          entries {
            __typename
            ...mediaListEntry
          }
        }
        user {
          __typename
          id
          name
          avatar {
            __typename
            large
          }
          mediaListOptions {
            __typename
            scoreFormat
            rowOrder
            animeList {
              __typename
              sectionOrder
              customLists
              splitCompletedSectionByFormat
            }
            mangaList {
              __typename
              sectionOrder
              customLists
              splitCompletedSectionByFormat
            }
          }
        }
      }
    }
    """

  public let operationName: String = "GetMediaListCollection"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + MediaListEntry.fragmentDefinition)
    document.append("\n" + ShortMediaDetails.fragmentDefinition)
    return document
  }

  public var userId: Int?
  public var userName: String?
  public var type: MediaType?

  public init(userId: Int? = nil, userName: String? = nil, type: MediaType? = nil) {
    self.userId = userId
    self.userName = userName
    self.type = type
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "userName": userName, "type": type]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("MediaListCollection", arguments: ["userId": GraphQLVariable("userId"), "userName": GraphQLVariable("userName"), "type": GraphQLVariable("type")], type: .object(MediaListCollection.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(mediaListCollection: MediaListCollection? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "MediaListCollection": mediaListCollection.flatMap { (value: MediaListCollection) -> ResultMap in value.resultMap }])
    }

    /// Media list collection query, provides list pre-grouped by status & custom lists. User ID and Media Type arguments required.
    public var mediaListCollection: MediaListCollection? {
      get {
        return (resultMap["MediaListCollection"] as? ResultMap).flatMap { MediaListCollection(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "MediaListCollection")
      }
    }

    public struct MediaListCollection: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MediaListCollection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("lists", type: .list(.object(List.selections))),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(lists: [List?]? = nil, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "MediaListCollection", "lists": lists.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// Grouped media list entries
      public var lists: [List?]? {
        get {
          return (resultMap["lists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "lists")
        }
      }

      /// The owner of the list
      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MediaListGroup"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("isCustomList", type: .scalar(Bool.self)),
            GraphQLField("isSplitCompletedList", alias: "isCompletedList", type: .scalar(Bool.self)),
            GraphQLField("entries", type: .list(.object(Entry.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, isCustomList: Bool? = nil, isCompletedList: Bool? = nil, entries: [Entry?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "MediaListGroup", "name": name, "isCustomList": isCustomList, "isCompletedList": isCompletedList, "entries": entries.flatMap { (value: [Entry?]) -> [ResultMap?] in value.map { (value: Entry?) -> ResultMap? in value.flatMap { (value: Entry) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var isCustomList: Bool? {
          get {
            return resultMap["isCustomList"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isCustomList")
          }
        }

        public var isCompletedList: Bool? {
          get {
            return resultMap["isCompletedList"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isCompletedList")
          }
        }

        /// Media list entries
        public var entries: [Entry?]? {
          get {
            return (resultMap["entries"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Entry?] in value.map { (value: ResultMap?) -> Entry? in value.flatMap { (value: ResultMap) -> Entry in Entry(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Entry?]) -> [ResultMap?] in value.map { (value: Entry?) -> ResultMap? in value.flatMap { (value: Entry) -> ResultMap in value.resultMap } } }, forKey: "entries")
          }
        }

        public struct Entry: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaList"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(MediaListEntry.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var mediaListEntry: MediaListEntry {
              get {
                return MediaListEntry(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("avatar", type: .object(Avatar.selections)),
            GraphQLField("mediaListOptions", type: .object(MediaListOption.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, name: String, avatar: Avatar? = nil, mediaListOptions: MediaListOption? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }, "mediaListOptions": mediaListOptions.flatMap { (value: MediaListOption) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the user
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The name of the user
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// The user's avatar images
        public var avatar: Avatar? {
          get {
            return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
          }
        }

        /// The user's media list options
        public var mediaListOptions: MediaListOption? {
          get {
            return (resultMap["mediaListOptions"] as? ResultMap).flatMap { MediaListOption(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "mediaListOptions")
          }
        }

        public struct Avatar: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UserAvatar"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("large", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(large: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The avatar of user at its largest size
          public var large: String? {
            get {
              return resultMap["large"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "large")
            }
          }
        }

        public struct MediaListOption: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["MediaListOptions"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("scoreFormat", type: .scalar(ScoreFormat.self)),
              GraphQLField("rowOrder", type: .scalar(String.self)),
              GraphQLField("animeList", type: .object(AnimeList.selections)),
              GraphQLField("mangaList", type: .object(MangaList.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(scoreFormat: ScoreFormat? = nil, rowOrder: String? = nil, animeList: AnimeList? = nil, mangaList: MangaList? = nil) {
            self.init(unsafeResultMap: ["__typename": "MediaListOptions", "scoreFormat": scoreFormat, "rowOrder": rowOrder, "animeList": animeList.flatMap { (value: AnimeList) -> ResultMap in value.resultMap }, "mangaList": mangaList.flatMap { (value: MangaList) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The score format the user is using for media lists
          public var scoreFormat: ScoreFormat? {
            get {
              return resultMap["scoreFormat"] as? ScoreFormat
            }
            set {
              resultMap.updateValue(newValue, forKey: "scoreFormat")
            }
          }

          /// The default order list rows should be displayed in
          public var rowOrder: String? {
            get {
              return resultMap["rowOrder"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "rowOrder")
            }
          }

          /// The user's anime list options
          public var animeList: AnimeList? {
            get {
              return (resultMap["animeList"] as? ResultMap).flatMap { AnimeList(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "animeList")
            }
          }

          /// The user's manga list options
          public var mangaList: MangaList? {
            get {
              return (resultMap["mangaList"] as? ResultMap).flatMap { MangaList(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "mangaList")
            }
          }

          public struct AnimeList: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaListTypeOptions"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("sectionOrder", type: .list(.scalar(String.self))),
                GraphQLField("customLists", type: .list(.scalar(String.self))),
                GraphQLField("splitCompletedSectionByFormat", type: .scalar(Bool.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(sectionOrder: [String?]? = nil, customLists: [String?]? = nil, splitCompletedSectionByFormat: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "MediaListTypeOptions", "sectionOrder": sectionOrder, "customLists": customLists, "splitCompletedSectionByFormat": splitCompletedSectionByFormat])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The order each list should be displayed in
            public var sectionOrder: [String?]? {
              get {
                return resultMap["sectionOrder"] as? [String?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "sectionOrder")
              }
            }

            /// The names of the user's custom lists
            public var customLists: [String?]? {
              get {
                return resultMap["customLists"] as? [String?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "customLists")
              }
            }

            /// If the completed sections of the list should be separated by format
            public var splitCompletedSectionByFormat: Bool? {
              get {
                return resultMap["splitCompletedSectionByFormat"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "splitCompletedSectionByFormat")
              }
            }
          }

          public struct MangaList: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MediaListTypeOptions"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("sectionOrder", type: .list(.scalar(String.self))),
                GraphQLField("customLists", type: .list(.scalar(String.self))),
                GraphQLField("splitCompletedSectionByFormat", type: .scalar(Bool.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(sectionOrder: [String?]? = nil, customLists: [String?]? = nil, splitCompletedSectionByFormat: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "MediaListTypeOptions", "sectionOrder": sectionOrder, "customLists": customLists, "splitCompletedSectionByFormat": splitCompletedSectionByFormat])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The order each list should be displayed in
            public var sectionOrder: [String?]? {
              get {
                return resultMap["sectionOrder"] as? [String?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "sectionOrder")
              }
            }

            /// The names of the user's custom lists
            public var customLists: [String?]? {
              get {
                return resultMap["customLists"] as? [String?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "customLists")
              }
            }

            /// If the completed sections of the list should be separated by format
            public var splitCompletedSectionByFormat: Bool? {
              get {
                return resultMap["splitCompletedSectionByFormat"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "splitCompletedSectionByFormat")
              }
            }
          }
        }
      }
    }
  }
}

public final class SaveMediaListEntryMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SaveMediaListEntry($mediaId: Int, $status: MediaListStatus, $score: Float, $progress: Int, $progressVolumes: Int, $repeat: Int, $private: Boolean, $notes: String, $customLists: [String], $hiddenFromStatusLists: Boolean, $startedAt: FuzzyDateInput, $completedAt: FuzzyDateInput) {
      SaveMediaListEntry(
        mediaId: $mediaId
        status: $status
        score: $score
        progress: $progress
        progressVolumes: $progressVolumes
        repeat: $repeat
        private: $private
        notes: $notes
        customLists: $customLists
        hiddenFromStatusLists: $hiddenFromStatusLists
        startedAt: $startedAt
        completedAt: $completedAt
      ) {
        __typename
        id
        mediaId
        status
        score
        progress
        progressVolumes
        repeat
        priority
        private
        hiddenFromStatusLists
        notes
        updatedAt
        startedAt {
          __typename
          year
          month
          day
        }
        completedAt {
          __typename
          year
          month
          day
        }
        user {
          __typename
          id
          name
        }
      }
    }
    """

  public let operationName: String = "SaveMediaListEntry"

  public var mediaId: Int?
  public var status: MediaListStatus?
  public var score: Double?
  public var progress: Int?
  public var progressVolumes: Int?
  public var `repeat`: Int?
  public var `private`: Bool?
  public var notes: String?
  public var customLists: [String?]?
  public var hiddenFromStatusLists: Bool?
  public var startedAt: FuzzyDateInput?
  public var completedAt: FuzzyDateInput?

  public init(mediaId: Int? = nil, status: MediaListStatus? = nil, score: Double? = nil, progress: Int? = nil, progressVolumes: Int? = nil, `repeat`: Int? = nil, `private`: Bool? = nil, notes: String? = nil, customLists: [String?]? = nil, hiddenFromStatusLists: Bool? = nil, startedAt: FuzzyDateInput? = nil, completedAt: FuzzyDateInput? = nil) {
    self.mediaId = mediaId
    self.status = status
    self.score = score
    self.progress = progress
    self.progressVolumes = progressVolumes
    self.`repeat` = `repeat`
    self.`private` = `private`
    self.notes = notes
    self.customLists = customLists
    self.hiddenFromStatusLists = hiddenFromStatusLists
    self.startedAt = startedAt
    self.completedAt = completedAt
  }

  public var variables: GraphQLMap? {
    return ["mediaId": mediaId, "status": status, "score": score, "progress": progress, "progressVolumes": progressVolumes, "repeat": `repeat`, "private": `private`, "notes": notes, "customLists": customLists, "hiddenFromStatusLists": hiddenFromStatusLists, "startedAt": startedAt, "completedAt": completedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("SaveMediaListEntry", arguments: ["mediaId": GraphQLVariable("mediaId"), "status": GraphQLVariable("status"), "score": GraphQLVariable("score"), "progress": GraphQLVariable("progress"), "progressVolumes": GraphQLVariable("progressVolumes"), "repeat": GraphQLVariable("repeat"), "private": GraphQLVariable("private"), "notes": GraphQLVariable("notes"), "customLists": GraphQLVariable("customLists"), "hiddenFromStatusLists": GraphQLVariable("hiddenFromStatusLists"), "startedAt": GraphQLVariable("startedAt"), "completedAt": GraphQLVariable("completedAt")], type: .object(SaveMediaListEntry.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(saveMediaListEntry: SaveMediaListEntry? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "SaveMediaListEntry": saveMediaListEntry.flatMap { (value: SaveMediaListEntry) -> ResultMap in value.resultMap }])
    }

    /// Create or update a media list entry
    public var saveMediaListEntry: SaveMediaListEntry? {
      get {
        return (resultMap["SaveMediaListEntry"] as? ResultMap).flatMap { SaveMediaListEntry(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "SaveMediaListEntry")
      }
    }

    public struct SaveMediaListEntry: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MediaList"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("mediaId", type: .nonNull(.scalar(Int.self))),
          GraphQLField("status", type: .scalar(MediaListStatus.self)),
          GraphQLField("score", type: .scalar(Double.self)),
          GraphQLField("progress", type: .scalar(Int.self)),
          GraphQLField("progressVolumes", type: .scalar(Int.self)),
          GraphQLField("repeat", type: .scalar(Int.self)),
          GraphQLField("priority", type: .scalar(Int.self)),
          GraphQLField("private", type: .scalar(Bool.self)),
          GraphQLField("hiddenFromStatusLists", type: .scalar(Bool.self)),
          GraphQLField("notes", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(Int.self)),
          GraphQLField("startedAt", type: .object(StartedAt.selections)),
          GraphQLField("completedAt", type: .object(CompletedAt.selections)),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, mediaId: Int, status: MediaListStatus? = nil, score: Double? = nil, progress: Int? = nil, progressVolumes: Int? = nil, `repeat`: Int? = nil, priority: Int? = nil, `private`: Bool? = nil, hiddenFromStatusLists: Bool? = nil, notes: String? = nil, updatedAt: Int? = nil, startedAt: StartedAt? = nil, completedAt: CompletedAt? = nil, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "MediaList", "id": id, "mediaId": mediaId, "status": status, "score": score, "progress": progress, "progressVolumes": progressVolumes, "repeat": `repeat`, "priority": priority, "private": `private`, "hiddenFromStatusLists": hiddenFromStatusLists, "notes": notes, "updatedAt": updatedAt, "startedAt": startedAt.flatMap { (value: StartedAt) -> ResultMap in value.resultMap }, "completedAt": completedAt.flatMap { (value: CompletedAt) -> ResultMap in value.resultMap }, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the list entry
      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The id of the media
      public var mediaId: Int {
        get {
          return resultMap["mediaId"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "mediaId")
        }
      }

      /// The watching/reading status
      public var status: MediaListStatus? {
        get {
          return resultMap["status"] as? MediaListStatus
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      /// The score of the entry
      public var score: Double? {
        get {
          return resultMap["score"] as? Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "score")
        }
      }

      /// The amount of episodes/chapters consumed by the user
      public var progress: Int? {
        get {
          return resultMap["progress"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "progress")
        }
      }

      /// The amount of volumes read by the user
      public var progressVolumes: Int? {
        get {
          return resultMap["progressVolumes"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "progressVolumes")
        }
      }

      /// The amount of times the user has rewatched/read the media
      public var `repeat`: Int? {
        get {
          return resultMap["repeat"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "repeat")
        }
      }

      /// Priority of planning
      public var priority: Int? {
        get {
          return resultMap["priority"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "priority")
        }
      }

      /// If the entry should only be visible to authenticated user
      public var `private`: Bool? {
        get {
          return resultMap["private"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "private")
        }
      }

      /// If the entry shown be hidden from non-custom lists
      public var hiddenFromStatusLists: Bool? {
        get {
          return resultMap["hiddenFromStatusLists"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "hiddenFromStatusLists")
        }
      }

      /// Text notes
      public var notes: String? {
        get {
          return resultMap["notes"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "notes")
        }
      }

      /// When the entry data was last updated
      public var updatedAt: Int? {
        get {
          return resultMap["updatedAt"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      /// When the entry was started by the user
      public var startedAt: StartedAt? {
        get {
          return (resultMap["startedAt"] as? ResultMap).flatMap { StartedAt(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "startedAt")
        }
      }

      /// When the entry was completed by the user
      public var completedAt: CompletedAt? {
        get {
          return (resultMap["completedAt"] as? ResultMap).flatMap { CompletedAt(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "completedAt")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct StartedAt: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FuzzyDate"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("year", type: .scalar(Int.self)),
            GraphQLField("month", type: .scalar(Int.self)),
            GraphQLField("day", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Numeric Year (2017)
        public var year: Int? {
          get {
            return resultMap["year"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "year")
          }
        }

        /// Numeric Month (3)
        public var month: Int? {
          get {
            return resultMap["month"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "month")
          }
        }

        /// Numeric Day (24)
        public var day: Int? {
          get {
            return resultMap["day"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "day")
          }
        }
      }

      public struct CompletedAt: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FuzzyDate"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("year", type: .scalar(Int.self)),
            GraphQLField("month", type: .scalar(Int.self)),
            GraphQLField("day", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Numeric Year (2017)
        public var year: Int? {
          get {
            return resultMap["year"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "year")
          }
        }

        /// Numeric Month (3)
        public var month: Int? {
          get {
            return resultMap["month"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "month")
          }
        }

        /// Numeric Day (24)
        public var day: Int? {
          get {
            return resultMap["day"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "day")
          }
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, name: String) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the user
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The name of the user
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public struct MediaDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment MediaDetails on Media {
      __typename
      type
      id
      idMal
      nextAiringEpisode {
        __typename
        id
        episode
        timeUntilAiring
      }
      title {
        __typename
        romaji
        english
        native
        userPreferred
      }
      format
      genres
      description
      season
      seasonYear
      episodes
      chapters
      duration
      startDate {
        __typename
        year
        month
        day
      }
      endDate {
        __typename
        year
        month
        day
      }
      status
      averageScore
      coverImage {
        __typename
        extraLarge
        large
        medium
      }
      bannerImage
      meanScore
      relations {
        __typename
        edges {
          __typename
          relationType
        }
        nodes {
          __typename
          ...ShortMediaDetails
        }
      }
      recommendations {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            mediaRecommendation {
              __typename
              ...ShortMediaDetails
            }
          }
        }
      }
      reviews {
        __typename
        edges {
          __typename
          node {
            __typename
            ...ReviewDetails
          }
        }
      }
      trailer {
        __typename
        ...TrailerDetails
      }
      externalLinks {
        __typename
        site
        url
        id
      }
    }
    """

  public static let possibleTypes: [String] = ["Media"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("type", type: .scalar(MediaType.self)),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("idMal", type: .scalar(Int.self)),
      GraphQLField("nextAiringEpisode", type: .object(NextAiringEpisode.selections)),
      GraphQLField("title", type: .object(Title.selections)),
      GraphQLField("format", type: .scalar(MediaFormat.self)),
      GraphQLField("genres", type: .list(.scalar(String.self))),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("season", type: .scalar(MediaSeason.self)),
      GraphQLField("seasonYear", type: .scalar(Int.self)),
      GraphQLField("episodes", type: .scalar(Int.self)),
      GraphQLField("chapters", type: .scalar(Int.self)),
      GraphQLField("duration", type: .scalar(Int.self)),
      GraphQLField("startDate", type: .object(StartDate.selections)),
      GraphQLField("endDate", type: .object(EndDate.selections)),
      GraphQLField("status", type: .scalar(MediaStatus.self)),
      GraphQLField("averageScore", type: .scalar(Int.self)),
      GraphQLField("coverImage", type: .object(CoverImage.selections)),
      GraphQLField("bannerImage", type: .scalar(String.self)),
      GraphQLField("meanScore", type: .scalar(Int.self)),
      GraphQLField("relations", type: .object(Relation.selections)),
      GraphQLField("recommendations", type: .object(Recommendation.selections)),
      GraphQLField("reviews", type: .object(Review.selections)),
      GraphQLField("trailer", type: .object(Trailer.selections)),
      GraphQLField("externalLinks", type: .list(.object(ExternalLink.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(type: MediaType? = nil, id: Int, idMal: Int? = nil, nextAiringEpisode: NextAiringEpisode? = nil, title: Title? = nil, format: MediaFormat? = nil, genres: [String?]? = nil, description: String? = nil, season: MediaSeason? = nil, seasonYear: Int? = nil, episodes: Int? = nil, chapters: Int? = nil, duration: Int? = nil, startDate: StartDate? = nil, endDate: EndDate? = nil, status: MediaStatus? = nil, averageScore: Int? = nil, coverImage: CoverImage? = nil, bannerImage: String? = nil, meanScore: Int? = nil, relations: Relation? = nil, recommendations: Recommendation? = nil, reviews: Review? = nil, trailer: Trailer? = nil, externalLinks: [ExternalLink?]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Media", "type": type, "id": id, "idMal": idMal, "nextAiringEpisode": nextAiringEpisode.flatMap { (value: NextAiringEpisode) -> ResultMap in value.resultMap }, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "format": format, "genres": genres, "description": description, "season": season, "seasonYear": seasonYear, "episodes": episodes, "chapters": chapters, "duration": duration, "startDate": startDate.flatMap { (value: StartDate) -> ResultMap in value.resultMap }, "endDate": endDate.flatMap { (value: EndDate) -> ResultMap in value.resultMap }, "status": status, "averageScore": averageScore, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }, "bannerImage": bannerImage, "meanScore": meanScore, "relations": relations.flatMap { (value: Relation) -> ResultMap in value.resultMap }, "recommendations": recommendations.flatMap { (value: Recommendation) -> ResultMap in value.resultMap }, "reviews": reviews.flatMap { (value: Review) -> ResultMap in value.resultMap }, "trailer": trailer.flatMap { (value: Trailer) -> ResultMap in value.resultMap }, "externalLinks": externalLinks.flatMap { (value: [ExternalLink?]) -> [ResultMap?] in value.map { (value: ExternalLink?) -> ResultMap? in value.flatMap { (value: ExternalLink) -> ResultMap in value.resultMap } } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The type of the media; anime or manga
  public var type: MediaType? {
    get {
      return resultMap["type"] as? MediaType
    }
    set {
      resultMap.updateValue(newValue, forKey: "type")
    }
  }

  /// The id of the media
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The mal id of the media
  public var idMal: Int? {
    get {
      return resultMap["idMal"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "idMal")
    }
  }

  /// The media's next episode airing schedule
  public var nextAiringEpisode: NextAiringEpisode? {
    get {
      return (resultMap["nextAiringEpisode"] as? ResultMap).flatMap { NextAiringEpisode(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "nextAiringEpisode")
    }
  }

  /// The official titles of the media in various languages
  public var title: Title? {
    get {
      return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "title")
    }
  }

  /// The format the media was released in
  public var format: MediaFormat? {
    get {
      return resultMap["format"] as? MediaFormat
    }
    set {
      resultMap.updateValue(newValue, forKey: "format")
    }
  }

  /// The genres of the media
  public var genres: [String?]? {
    get {
      return resultMap["genres"] as? [String?]
    }
    set {
      resultMap.updateValue(newValue, forKey: "genres")
    }
  }

  /// Short description of the media's story and characters
  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  /// The season the media was initially released in
  public var season: MediaSeason? {
    get {
      return resultMap["season"] as? MediaSeason
    }
    set {
      resultMap.updateValue(newValue, forKey: "season")
    }
  }

  /// The season year the media was initially released in
  public var seasonYear: Int? {
    get {
      return resultMap["seasonYear"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "seasonYear")
    }
  }

  /// The amount of episodes the anime has when complete
  public var episodes: Int? {
    get {
      return resultMap["episodes"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "episodes")
    }
  }

  /// The amount of chapters the manga has when complete
  public var chapters: Int? {
    get {
      return resultMap["chapters"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "chapters")
    }
  }

  /// The general length of each anime episode in minutes
  public var duration: Int? {
    get {
      return resultMap["duration"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "duration")
    }
  }

  /// The first official release date of the media
  public var startDate: StartDate? {
    get {
      return (resultMap["startDate"] as? ResultMap).flatMap { StartDate(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "startDate")
    }
  }

  /// The last official release date of the media
  public var endDate: EndDate? {
    get {
      return (resultMap["endDate"] as? ResultMap).flatMap { EndDate(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "endDate")
    }
  }

  /// The current releasing status of the media
  public var status: MediaStatus? {
    get {
      return resultMap["status"] as? MediaStatus
    }
    set {
      resultMap.updateValue(newValue, forKey: "status")
    }
  }

  /// A weighted average score of all the user's scores of the media
  public var averageScore: Int? {
    get {
      return resultMap["averageScore"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "averageScore")
    }
  }

  /// The cover images of the media
  public var coverImage: CoverImage? {
    get {
      return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
    }
  }

  /// The banner image of the media
  public var bannerImage: String? {
    get {
      return resultMap["bannerImage"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "bannerImage")
    }
  }

  /// Mean score of all the user's scores of the media
  public var meanScore: Int? {
    get {
      return resultMap["meanScore"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "meanScore")
    }
  }

  /// Other media in the same or connecting franchise
  public var relations: Relation? {
    get {
      return (resultMap["relations"] as? ResultMap).flatMap { Relation(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "relations")
    }
  }

  /// User recommendations for similar media
  public var recommendations: Recommendation? {
    get {
      return (resultMap["recommendations"] as? ResultMap).flatMap { Recommendation(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "recommendations")
    }
  }

  /// User reviews of the media
  public var reviews: Review? {
    get {
      return (resultMap["reviews"] as? ResultMap).flatMap { Review(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "reviews")
    }
  }

  /// Media trailer or advertisement
  public var trailer: Trailer? {
    get {
      return (resultMap["trailer"] as? ResultMap).flatMap { Trailer(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "trailer")
    }
  }

  /// External links to another site related to the media
  public var externalLinks: [ExternalLink?]? {
    get {
      return (resultMap["externalLinks"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ExternalLink?] in value.map { (value: ResultMap?) -> ExternalLink? in value.flatMap { (value: ResultMap) -> ExternalLink in ExternalLink(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [ExternalLink?]) -> [ResultMap?] in value.map { (value: ExternalLink?) -> ResultMap? in value.flatMap { (value: ExternalLink) -> ResultMap in value.resultMap } } }, forKey: "externalLinks")
    }
  }

  public struct NextAiringEpisode: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["AiringSchedule"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("episode", type: .nonNull(.scalar(Int.self))),
        GraphQLField("timeUntilAiring", type: .nonNull(.scalar(Int.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: Int, episode: Int, timeUntilAiring: Int) {
      self.init(unsafeResultMap: ["__typename": "AiringSchedule", "id": id, "episode": episode, "timeUntilAiring": timeUntilAiring])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The id of the airing schedule item
    public var id: Int {
      get {
        return resultMap["id"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    /// The airing episode number
    public var episode: Int {
      get {
        return resultMap["episode"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "episode")
      }
    }

    /// Seconds until episode starts airing
    public var timeUntilAiring: Int {
      get {
        return resultMap["timeUntilAiring"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "timeUntilAiring")
      }
    }
  }

  public struct Title: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaTitle"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("romaji", type: .scalar(String.self)),
        GraphQLField("english", type: .scalar(String.self)),
        GraphQLField("native", type: .scalar(String.self)),
        GraphQLField("userPreferred", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(romaji: String? = nil, english: String? = nil, native: String? = nil, userPreferred: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaTitle", "romaji": romaji, "english": english, "native": native, "userPreferred": userPreferred])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The romanization of the native language title
    public var romaji: String? {
      get {
        return resultMap["romaji"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "romaji")
      }
    }

    /// The official english title
    public var english: String? {
      get {
        return resultMap["english"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "english")
      }
    }

    /// Official title in it's native language
    public var native: String? {
      get {
        return resultMap["native"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "native")
      }
    }

    /// The currently authenticated users preferred title language. Default romaji for non-authenticated
    public var userPreferred: String? {
      get {
        return resultMap["userPreferred"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "userPreferred")
      }
    }
  }

  public struct StartDate: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["FuzzyDate"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .scalar(Int.self)),
        GraphQLField("month", type: .scalar(Int.self)),
        GraphQLField("day", type: .scalar(Int.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
      self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Numeric Year (2017)
    public var year: Int? {
      get {
        return resultMap["year"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "year")
      }
    }

    /// Numeric Month (3)
    public var month: Int? {
      get {
        return resultMap["month"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "month")
      }
    }

    /// Numeric Day (24)
    public var day: Int? {
      get {
        return resultMap["day"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "day")
      }
    }
  }

  public struct EndDate: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["FuzzyDate"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .scalar(Int.self)),
        GraphQLField("month", type: .scalar(Int.self)),
        GraphQLField("day", type: .scalar(Int.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
      self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Numeric Year (2017)
    public var year: Int? {
      get {
        return resultMap["year"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "year")
      }
    }

    /// Numeric Month (3)
    public var month: Int? {
      get {
        return resultMap["month"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "month")
      }
    }

    /// Numeric Day (24)
    public var day: Int? {
      get {
        return resultMap["day"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "day")
      }
    }
  }

  public struct CoverImage: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaCoverImage"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("extraLarge", type: .scalar(String.self)),
        GraphQLField("large", type: .scalar(String.self)),
        GraphQLField("medium", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(extraLarge: String? = nil, large: String? = nil, medium: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "extraLarge": extraLarge, "large": large, "medium": medium])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The cover image url of the media at its largest size. If this size isn't available, large will be provided instead.
    public var extraLarge: String? {
      get {
        return resultMap["extraLarge"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "extraLarge")
      }
    }

    /// The cover image url of the media at a large size
    public var large: String? {
      get {
        return resultMap["large"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "large")
      }
    }

    /// The cover image url of the media at medium size
    public var medium: String? {
      get {
        return resultMap["medium"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "medium")
      }
    }
  }

  public struct Relation: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
        GraphQLField("nodes", type: .list(.object(Node.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(edges: [Edge?]? = nil, nodes: [Node?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public var nodes: [Node?]? {
      get {
        return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MediaEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("relationType", type: .scalar(MediaRelation.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(relationType: MediaRelation? = nil) {
        self.init(unsafeResultMap: ["__typename": "MediaEdge", "relationType": relationType])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The type of relation to the parent model
      public var relationType: MediaRelation? {
        get {
          return resultMap["relationType"] as? MediaRelation
        }
        set {
          resultMap.updateValue(newValue, forKey: "relationType")
        }
      }
    }

    public struct Node: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Media"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(ShortMediaDetails.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var shortMediaDetails: ShortMediaDetails {
          get {
            return ShortMediaDetails(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }

  public struct Recommendation: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["RecommendationConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "RecommendationConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RecommendationEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .object(Node.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node? = nil) {
        self.init(unsafeResultMap: ["__typename": "RecommendationEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var node: Node? {
        get {
          return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Recommendation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
            GraphQLField("mediaRecommendation", type: .object(MediaRecommendation.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: Int, mediaRecommendation: MediaRecommendation? = nil) {
          self.init(unsafeResultMap: ["__typename": "Recommendation", "id": id, "mediaRecommendation": mediaRecommendation.flatMap { (value: MediaRecommendation) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the recommendation
        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The recommended media
        public var mediaRecommendation: MediaRecommendation? {
          get {
            return (resultMap["mediaRecommendation"] as? ResultMap).flatMap { MediaRecommendation(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "mediaRecommendation")
          }
        }

        public struct MediaRecommendation: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Media"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLFragmentSpread(ShortMediaDetails.self),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var shortMediaDetails: ShortMediaDetails {
              get {
                return ShortMediaDetails(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }
      }
    }
  }

  public struct Review: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ReviewConnection"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .list(.object(Edge.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(edges: [Edge?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "ReviewConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var edges: [Edge?]? {
      get {
        return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
      }
    }

    public struct Edge: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ReviewEdge"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .object(Node.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(node: Node? = nil) {
        self.init(unsafeResultMap: ["__typename": "ReviewEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var node: Node? {
        get {
          return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "node")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Review"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(ReviewDetails.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var reviewDetails: ReviewDetails {
            get {
              return ReviewDetails(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }

  public struct Trailer: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaTrailer"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(TrailerDetails.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: String? = nil, site: String? = nil, thumbnail: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaTrailer", "id": id, "site": site, "thumbnail": thumbnail])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var trailerDetails: TrailerDetails {
        get {
          return TrailerDetails(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct ExternalLink: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaExternalLink"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("site", type: .nonNull(.scalar(String.self))),
        GraphQLField("url", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(site: String, url: String, id: Int) {
      self.init(unsafeResultMap: ["__typename": "MediaExternalLink", "site": site, "url": url, "id": id])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The site location of the external link
    public var site: String {
      get {
        return resultMap["site"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "site")
      }
    }

    /// The url of the external link
    public var url: String {
      get {
        return resultMap["url"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "url")
      }
    }

    /// The id of the external link
    public var id: Int {
      get {
        return resultMap["id"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }
  }
}

public struct TrailerDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment TrailerDetails on MediaTrailer {
      __typename
      id
      site
      thumbnail
    }
    """

  public static let possibleTypes: [String] = ["MediaTrailer"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .scalar(String.self)),
      GraphQLField("site", type: .scalar(String.self)),
      GraphQLField("thumbnail", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: String? = nil, site: String? = nil, thumbnail: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "MediaTrailer", "id": id, "site": site, "thumbnail": thumbnail])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The trailer video id
  public var id: String? {
    get {
      return resultMap["id"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The site the video is hosted by (Currently either youtube or dailymotion)
  public var site: String? {
    get {
      return resultMap["site"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "site")
    }
  }

  /// The url for the thumbnail image of the video
  public var thumbnail: String? {
    get {
      return resultMap["thumbnail"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "thumbnail")
    }
  }
}

public struct ShortMediaDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ShortMediaDetails on Media {
      __typename
      id
      idMal
      format
      title {
        __typename
        romaji
        english
        native
        userPreferred
      }
      status
      season
      seasonYear
      coverImage {
        __typename
        extraLarge
        large
        medium
      }
    }
    """

  public static let possibleTypes: [String] = ["Media"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("idMal", type: .scalar(Int.self)),
      GraphQLField("format", type: .scalar(MediaFormat.self)),
      GraphQLField("title", type: .object(Title.selections)),
      GraphQLField("status", type: .scalar(MediaStatus.self)),
      GraphQLField("season", type: .scalar(MediaSeason.self)),
      GraphQLField("seasonYear", type: .scalar(Int.self)),
      GraphQLField("coverImage", type: .object(CoverImage.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: Int, idMal: Int? = nil, format: MediaFormat? = nil, title: Title? = nil, status: MediaStatus? = nil, season: MediaSeason? = nil, seasonYear: Int? = nil, coverImage: CoverImage? = nil) {
    self.init(unsafeResultMap: ["__typename": "Media", "id": id, "idMal": idMal, "format": format, "title": title.flatMap { (value: Title) -> ResultMap in value.resultMap }, "status": status, "season": season, "seasonYear": seasonYear, "coverImage": coverImage.flatMap { (value: CoverImage) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The id of the media
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The mal id of the media
  public var idMal: Int? {
    get {
      return resultMap["idMal"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "idMal")
    }
  }

  /// The format the media was released in
  public var format: MediaFormat? {
    get {
      return resultMap["format"] as? MediaFormat
    }
    set {
      resultMap.updateValue(newValue, forKey: "format")
    }
  }

  /// The official titles of the media in various languages
  public var title: Title? {
    get {
      return (resultMap["title"] as? ResultMap).flatMap { Title(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "title")
    }
  }

  /// The current releasing status of the media
  public var status: MediaStatus? {
    get {
      return resultMap["status"] as? MediaStatus
    }
    set {
      resultMap.updateValue(newValue, forKey: "status")
    }
  }

  /// The season the media was initially released in
  public var season: MediaSeason? {
    get {
      return resultMap["season"] as? MediaSeason
    }
    set {
      resultMap.updateValue(newValue, forKey: "season")
    }
  }

  /// The season year the media was initially released in
  public var seasonYear: Int? {
    get {
      return resultMap["seasonYear"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "seasonYear")
    }
  }

  /// The cover images of the media
  public var coverImage: CoverImage? {
    get {
      return (resultMap["coverImage"] as? ResultMap).flatMap { CoverImage(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "coverImage")
    }
  }

  public struct Title: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaTitle"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("romaji", type: .scalar(String.self)),
        GraphQLField("english", type: .scalar(String.self)),
        GraphQLField("native", type: .scalar(String.self)),
        GraphQLField("userPreferred", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(romaji: String? = nil, english: String? = nil, native: String? = nil, userPreferred: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaTitle", "romaji": romaji, "english": english, "native": native, "userPreferred": userPreferred])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The romanization of the native language title
    public var romaji: String? {
      get {
        return resultMap["romaji"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "romaji")
      }
    }

    /// The official english title
    public var english: String? {
      get {
        return resultMap["english"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "english")
      }
    }

    /// Official title in it's native language
    public var native: String? {
      get {
        return resultMap["native"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "native")
      }
    }

    /// The currently authenticated users preferred title language. Default romaji for non-authenticated
    public var userPreferred: String? {
      get {
        return resultMap["userPreferred"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "userPreferred")
      }
    }
  }

  public struct CoverImage: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["MediaCoverImage"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("extraLarge", type: .scalar(String.self)),
        GraphQLField("large", type: .scalar(String.self)),
        GraphQLField("medium", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(extraLarge: String? = nil, large: String? = nil, medium: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "MediaCoverImage", "extraLarge": extraLarge, "large": large, "medium": medium])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The cover image url of the media at its largest size. If this size isn't available, large will be provided instead.
    public var extraLarge: String? {
      get {
        return resultMap["extraLarge"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "extraLarge")
      }
    }

    /// The cover image url of the media at a large size
    public var large: String? {
      get {
        return resultMap["large"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "large")
      }
    }

    /// The cover image url of the media at medium size
    public var medium: String? {
      get {
        return resultMap["medium"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "medium")
      }
    }
  }
}

public struct UserDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment UserDetails on User {
      __typename
      id
      avatar {
        __typename
        large
        medium
      }
      name
    }
    """

  public static let possibleTypes: [String] = ["User"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("avatar", type: .object(Avatar.selections)),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: Int, avatar: Avatar? = nil, name: String) {
    self.init(unsafeResultMap: ["__typename": "User", "id": id, "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }, "name": name])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The id of the user
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The user's avatar images
  public var avatar: Avatar? {
    get {
      return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
    }
  }

  /// The name of the user
  public var name: String {
    get {
      return resultMap["name"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }

  public struct Avatar: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["UserAvatar"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("large", type: .scalar(String.self)),
        GraphQLField("medium", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(large: String? = nil, medium: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "UserAvatar", "large": large, "medium": medium])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The avatar of user at its largest size
    public var large: String? {
      get {
        return resultMap["large"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "large")
      }
    }

    /// The avatar of user at medium size
    public var medium: String? {
      get {
        return resultMap["medium"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "medium")
      }
    }
  }
}

public struct ReviewDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ReviewDetails on Review {
      __typename
      id
      createdAt
      updatedAt
      user {
        __typename
        ...UserDetails
      }
      userId
      score
      rating
      ratingAmount
      userRating
      summary
      body
    }
    """

  public static let possibleTypes: [String] = ["Review"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
      GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
      GraphQLField("user", type: .object(User.selections)),
      GraphQLField("userId", type: .nonNull(.scalar(Int.self))),
      GraphQLField("score", type: .scalar(Int.self)),
      GraphQLField("rating", type: .scalar(Int.self)),
      GraphQLField("ratingAmount", type: .scalar(Int.self)),
      GraphQLField("userRating", type: .scalar(ReviewRating.self)),
      GraphQLField("summary", type: .scalar(String.self)),
      GraphQLField("body", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: Int, createdAt: Int, updatedAt: Int, user: User? = nil, userId: Int, score: Int? = nil, rating: Int? = nil, ratingAmount: Int? = nil, userRating: ReviewRating? = nil, summary: String? = nil, body: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "Review", "id": id, "createdAt": createdAt, "updatedAt": updatedAt, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "userId": userId, "score": score, "rating": rating, "ratingAmount": ratingAmount, "userRating": userRating, "summary": summary, "body": body])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The id of the review
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The time of the thread creation
  public var createdAt: Int {
    get {
      return resultMap["createdAt"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  /// The time of the thread last update
  public var updatedAt: Int {
    get {
      return resultMap["updatedAt"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  /// The creator of the review
  public var user: User? {
    get {
      return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "user")
    }
  }

  /// The id of the review's creator
  public var userId: Int {
    get {
      return resultMap["userId"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "userId")
    }
  }

  /// The review score of the media
  public var score: Int? {
    get {
      return resultMap["score"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "score")
    }
  }

  /// The total user rating of the review
  public var rating: Int? {
    get {
      return resultMap["rating"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "rating")
    }
  }

  /// The amount of user ratings of the review
  public var ratingAmount: Int? {
    get {
      return resultMap["ratingAmount"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "ratingAmount")
    }
  }

  /// The rating of the review by currently authenticated user
  public var userRating: ReviewRating? {
    get {
      return resultMap["userRating"] as? ReviewRating
    }
    set {
      resultMap.updateValue(newValue, forKey: "userRating")
    }
  }

  /// A short summary of the review
  public var summary: String? {
    get {
      return resultMap["summary"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "summary")
    }
  }

  /// The main review body text
  public var body: String? {
    get {
      return resultMap["body"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "body")
    }
  }

  public struct User: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["User"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(UserDetails.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var userDetails: UserDetails {
        get {
          return UserDetails(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct PageInfoDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PageInfoDetails on PageInfo {
      __typename
      total
      perPage
      currentPage
      lastPage
      hasNextPage
    }
    """

  public static let possibleTypes: [String] = ["PageInfo"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("total", type: .scalar(Int.self)),
      GraphQLField("perPage", type: .scalar(Int.self)),
      GraphQLField("currentPage", type: .scalar(Int.self)),
      GraphQLField("lastPage", type: .scalar(Int.self)),
      GraphQLField("hasNextPage", type: .scalar(Bool.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(total: Int? = nil, perPage: Int? = nil, currentPage: Int? = nil, lastPage: Int? = nil, hasNextPage: Bool? = nil) {
    self.init(unsafeResultMap: ["__typename": "PageInfo", "total": total, "perPage": perPage, "currentPage": currentPage, "lastPage": lastPage, "hasNextPage": hasNextPage])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The total number of items
  public var total: Int? {
    get {
      return resultMap["total"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "total")
    }
  }

  /// The count on a page
  public var perPage: Int? {
    get {
      return resultMap["perPage"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "perPage")
    }
  }

  /// The current page
  public var currentPage: Int? {
    get {
      return resultMap["currentPage"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "currentPage")
    }
  }

  /// The last page
  public var lastPage: Int? {
    get {
      return resultMap["lastPage"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "lastPage")
    }
  }

  /// If there is another page
  public var hasNextPage: Bool? {
    get {
      return resultMap["hasNextPage"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "hasNextPage")
    }
  }
}

public struct ThreadDetails: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment ThreadDetails on Thread {
      __typename
      id
      user {
        __typename
        ...UserDetails
      }
      title
      body
      replyCount
      viewCount
      likeCount
      categories {
        __typename
        id
        name
      }
      replyUser {
        __typename
        ...UserDetails
      }
      repliedAt
      createdAt
      updatedAt
    }
    """

  public static let possibleTypes: [String] = ["Thread"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("user", type: .object(User.selections)),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("body", type: .scalar(String.self)),
      GraphQLField("replyCount", type: .scalar(Int.self)),
      GraphQLField("viewCount", type: .scalar(Int.self)),
      GraphQLField("likeCount", type: .nonNull(.scalar(Int.self))),
      GraphQLField("categories", type: .list(.object(Category.selections))),
      GraphQLField("replyUser", type: .object(ReplyUser.selections)),
      GraphQLField("repliedAt", type: .scalar(Int.self)),
      GraphQLField("createdAt", type: .nonNull(.scalar(Int.self))),
      GraphQLField("updatedAt", type: .nonNull(.scalar(Int.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: Int, user: User? = nil, title: String? = nil, body: String? = nil, replyCount: Int? = nil, viewCount: Int? = nil, likeCount: Int, categories: [Category?]? = nil, replyUser: ReplyUser? = nil, repliedAt: Int? = nil, createdAt: Int, updatedAt: Int) {
    self.init(unsafeResultMap: ["__typename": "Thread", "id": id, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "title": title, "body": body, "replyCount": replyCount, "viewCount": viewCount, "likeCount": likeCount, "categories": categories.flatMap { (value: [Category?]) -> [ResultMap?] in value.map { (value: Category?) -> ResultMap? in value.flatMap { (value: Category) -> ResultMap in value.resultMap } } }, "replyUser": replyUser.flatMap { (value: ReplyUser) -> ResultMap in value.resultMap }, "repliedAt": repliedAt, "createdAt": createdAt, "updatedAt": updatedAt])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The id of the thread
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The owner of the thread
  public var user: User? {
    get {
      return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "user")
    }
  }

  /// The title of the thread
  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  /// The text body of the thread (Markdown)
  public var body: String? {
    get {
      return resultMap["body"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "body")
    }
  }

  /// The number of comments on the thread
  public var replyCount: Int? {
    get {
      return resultMap["replyCount"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "replyCount")
    }
  }

  /// The number of times users have viewed the thread
  public var viewCount: Int? {
    get {
      return resultMap["viewCount"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "viewCount")
    }
  }

  /// The amount of likes the thread has
  public var likeCount: Int {
    get {
      return resultMap["likeCount"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "likeCount")
    }
  }

  /// The categories of the thread
  public var categories: [Category?]? {
    get {
      return (resultMap["categories"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Category?] in value.map { (value: ResultMap?) -> Category? in value.flatMap { (value: ResultMap) -> Category in Category(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Category?]) -> [ResultMap?] in value.map { (value: Category?) -> ResultMap? in value.flatMap { (value: Category) -> ResultMap in value.resultMap } } }, forKey: "categories")
    }
  }

  /// The user to last reply to the thread
  public var replyUser: ReplyUser? {
    get {
      return (resultMap["replyUser"] as? ResultMap).flatMap { ReplyUser(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "replyUser")
    }
  }

  /// The time of the last reply
  public var repliedAt: Int? {
    get {
      return resultMap["repliedAt"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "repliedAt")
    }
  }

  /// The time of the thread creation
  public var createdAt: Int {
    get {
      return resultMap["createdAt"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  /// The time of the thread last update
  public var updatedAt: Int {
    get {
      return resultMap["updatedAt"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public struct User: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["User"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(UserDetails.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var userDetails: UserDetails {
        get {
          return UserDetails(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }

  public struct Category: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["ThreadCategory"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(id: Int, name: String) {
      self.init(unsafeResultMap: ["__typename": "ThreadCategory", "id": id, "name": name])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The id of the category
    public var id: Int {
      get {
        return resultMap["id"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    /// The name of the category
    public var name: String {
      get {
        return resultMap["name"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "name")
      }
    }
  }

  public struct ReplyUser: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["User"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(UserDetails.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var userDetails: UserDetails {
        get {
          return UserDetails(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}

public struct MediaListEntry: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment mediaListEntry on MediaList {
      __typename
      id
      mediaId
      status
      score
      progress
      progressVolumes
      repeat
      priority
      private
      hiddenFromStatusLists
      customLists
      notes
      updatedAt
      startedAt {
        __typename
        year
        month
        day
      }
      completedAt {
        __typename
        year
        month
        day
      }
      media {
        __typename
        ...ShortMediaDetails
      }
    }
    """

  public static let possibleTypes: [String] = ["MediaList"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(Int.self))),
      GraphQLField("mediaId", type: .nonNull(.scalar(Int.self))),
      GraphQLField("status", type: .scalar(MediaListStatus.self)),
      GraphQLField("score", type: .scalar(Double.self)),
      GraphQLField("progress", type: .scalar(Int.self)),
      GraphQLField("progressVolumes", type: .scalar(Int.self)),
      GraphQLField("repeat", type: .scalar(Int.self)),
      GraphQLField("priority", type: .scalar(Int.self)),
      GraphQLField("private", type: .scalar(Bool.self)),
      GraphQLField("hiddenFromStatusLists", type: .scalar(Bool.self)),
      GraphQLField("customLists", type: .scalar(Json.self)),
      GraphQLField("notes", type: .scalar(String.self)),
      GraphQLField("updatedAt", type: .scalar(Int.self)),
      GraphQLField("startedAt", type: .object(StartedAt.selections)),
      GraphQLField("completedAt", type: .object(CompletedAt.selections)),
      GraphQLField("media", type: .object(Medium.selections)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: Int, mediaId: Int, status: MediaListStatus? = nil, score: Double? = nil, progress: Int? = nil, progressVolumes: Int? = nil, `repeat`: Int? = nil, priority: Int? = nil, `private`: Bool? = nil, hiddenFromStatusLists: Bool? = nil, customLists: Json? = nil, notes: String? = nil, updatedAt: Int? = nil, startedAt: StartedAt? = nil, completedAt: CompletedAt? = nil, media: Medium? = nil) {
    self.init(unsafeResultMap: ["__typename": "MediaList", "id": id, "mediaId": mediaId, "status": status, "score": score, "progress": progress, "progressVolumes": progressVolumes, "repeat": `repeat`, "priority": priority, "private": `private`, "hiddenFromStatusLists": hiddenFromStatusLists, "customLists": customLists, "notes": notes, "updatedAt": updatedAt, "startedAt": startedAt.flatMap { (value: StartedAt) -> ResultMap in value.resultMap }, "completedAt": completedAt.flatMap { (value: CompletedAt) -> ResultMap in value.resultMap }, "media": media.flatMap { (value: Medium) -> ResultMap in value.resultMap }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The id of the list entry
  public var id: Int {
    get {
      return resultMap["id"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The id of the media
  public var mediaId: Int {
    get {
      return resultMap["mediaId"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "mediaId")
    }
  }

  /// The watching/reading status
  public var status: MediaListStatus? {
    get {
      return resultMap["status"] as? MediaListStatus
    }
    set {
      resultMap.updateValue(newValue, forKey: "status")
    }
  }

  /// The score of the entry
  public var score: Double? {
    get {
      return resultMap["score"] as? Double
    }
    set {
      resultMap.updateValue(newValue, forKey: "score")
    }
  }

  /// The amount of episodes/chapters consumed by the user
  public var progress: Int? {
    get {
      return resultMap["progress"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "progress")
    }
  }

  /// The amount of volumes read by the user
  public var progressVolumes: Int? {
    get {
      return resultMap["progressVolumes"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "progressVolumes")
    }
  }

  /// The amount of times the user has rewatched/read the media
  public var `repeat`: Int? {
    get {
      return resultMap["repeat"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "repeat")
    }
  }

  /// Priority of planning
  public var priority: Int? {
    get {
      return resultMap["priority"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "priority")
    }
  }

  /// If the entry should only be visible to authenticated user
  public var `private`: Bool? {
    get {
      return resultMap["private"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "private")
    }
  }

  /// If the entry shown be hidden from non-custom lists
  public var hiddenFromStatusLists: Bool? {
    get {
      return resultMap["hiddenFromStatusLists"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "hiddenFromStatusLists")
    }
  }

  /// Map of booleans for which custom lists the entry are in
  public var customLists: Json? {
    get {
      return resultMap["customLists"] as? Json
    }
    set {
      resultMap.updateValue(newValue, forKey: "customLists")
    }
  }

  /// Text notes
  public var notes: String? {
    get {
      return resultMap["notes"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "notes")
    }
  }

  /// When the entry data was last updated
  public var updatedAt: Int? {
    get {
      return resultMap["updatedAt"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  /// When the entry was started by the user
  public var startedAt: StartedAt? {
    get {
      return (resultMap["startedAt"] as? ResultMap).flatMap { StartedAt(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "startedAt")
    }
  }

  /// When the entry was completed by the user
  public var completedAt: CompletedAt? {
    get {
      return (resultMap["completedAt"] as? ResultMap).flatMap { CompletedAt(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "completedAt")
    }
  }

  public var media: Medium? {
    get {
      return (resultMap["media"] as? ResultMap).flatMap { Medium(unsafeResultMap: $0) }
    }
    set {
      resultMap.updateValue(newValue?.resultMap, forKey: "media")
    }
  }

  public struct StartedAt: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["FuzzyDate"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .scalar(Int.self)),
        GraphQLField("month", type: .scalar(Int.self)),
        GraphQLField("day", type: .scalar(Int.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
      self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Numeric Year (2017)
    public var year: Int? {
      get {
        return resultMap["year"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "year")
      }
    }

    /// Numeric Month (3)
    public var month: Int? {
      get {
        return resultMap["month"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "month")
      }
    }

    /// Numeric Day (24)
    public var day: Int? {
      get {
        return resultMap["day"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "day")
      }
    }
  }

  public struct CompletedAt: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["FuzzyDate"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("year", type: .scalar(Int.self)),
        GraphQLField("month", type: .scalar(Int.self)),
        GraphQLField("day", type: .scalar(Int.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(year: Int? = nil, month: Int? = nil, day: Int? = nil) {
      self.init(unsafeResultMap: ["__typename": "FuzzyDate", "year": year, "month": month, "day": day])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Numeric Year (2017)
    public var year: Int? {
      get {
        return resultMap["year"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "year")
      }
    }

    /// Numeric Month (3)
    public var month: Int? {
      get {
        return resultMap["month"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "month")
      }
    }

    /// Numeric Day (24)
    public var day: Int? {
      get {
        return resultMap["day"] as? Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "day")
      }
    }
  }

  public struct Medium: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Media"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(ShortMediaDetails.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var shortMediaDetails: ShortMediaDetails {
        get {
          return ShortMediaDetails(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}
