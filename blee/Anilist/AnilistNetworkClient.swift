//
//  AnilistNetworkClient.swift
//  blee
//
//  Created by J Tan on 1/28/22.
//

import Foundation
import Apollo
import SwiftUI

//public enum CachePolicy {
//  /// Return data from the cache if available, else fetch results from the server.
//  case returnCacheDataElseFetch
//  ///  Always fetch results from the server.
//  case fetchIgnoringCacheData
//  /// Return data from the cache if available, else return nil.
//  case returnCacheDataDontFetch
//}

class AnilistNetworkClient {
    static let shared = AnilistNetworkClient()
    private(set) lazy var apollo: ApolloClient = {
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store)
        let url = URL(string: "https://graphql.anilist.co/")!
        let transport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                     endpointURL: url)
        return ApolloClient(networkTransport: transport, store: store)
    }()
}

extension AnilistNetworkClient {
    func searchAnilistAnime(keywords: String, mediaType: MediaType) {
        if (!keywords.isEmpty) {
            AnilistNetworkClient.shared.apollo.fetch(query: SearchMediaQuery(search: keywords,
                                                                             sort: [.searchMatch, .popularityDesc],
                                                                             type:  mediaType)) { result in
                switch result {
                case .success(let graphQLResult):
                    let graphQLMediaCollection = graphQLResult.data?.page?.media
                    
                    print(graphQLMediaCollection)
                case .failure(let error):
                    print("Failure! Error: \(error)")
                }
            }
        }
    }
    
    func fetchMediaListCollection(userId: Int,
                                  userName: String,
                                  type: MediaType,
                                  shouldFetchFromCache: Bool,
                                  completion: @escaping (_ mediaCollection: GetMediaListCollectionQuery.Data.MediaListCollection?) -> ()) {
        AnilistNetworkClient.shared.apollo.fetch(query: GetMediaListCollectionQuery(userId: userId,
                                                                                    userName: userName ,
                                                                                    type: type),
                                                 cachePolicy: shouldFetchFromCache ? .returnCacheDataElseFetch : .fetchIgnoringCacheData) { result in
            switch result {
            case .success(let graphQLResult):
                completion(graphQLResult.data?.mediaListCollection)
            case .failure(let error):
                print("Failure! Error: \(error)")
                completion(nil)
            }
        }
    }
    
    func fetchViewerDetail(completion: @escaping (_ user: User?) -> ()) {
        let profileColorStringToColor: [String: Color] = ["blue": .blue,
                                                          "purple": .purple,
                                                          "pink": .pink,
                                                          "orange": .orange,
                                                          "red": .red,
                                                          "gray": .gray,
                                                          "green": .green]
        
        AnilistNetworkClient.shared.apollo.fetch(query: ViewerDetailQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let viewer = graphQLResult.data?.viewer {
                    let userProfileColorStr: String? = viewer.options?.profileColor
                    var userProfileColor: Color = .red
                    
                    if let userProfileColorStr = userProfileColorStr {
                        if let defaultColor = profileColorStringToColor[userProfileColorStr] {
                            userProfileColor = defaultColor
                        } else {
                            userProfileColor = Color(hex: userProfileColorStr)
                        }
                    }
                    
                    completion(User(id: viewer.id,
                                    avatar: Avatar(large: viewer.avatar?.large,
                                                   medium: viewer.avatar?.large),
                                    name: viewer.name,
                                    profileColor: userProfileColor))
                } else {
                    completion(nil)
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
                completion(nil)
            }
        }
    }
    
    func saveMediaListEntry(
                            mediaId: Int,
                            status: MediaListStatus?,
                            score: Double?,
                            progress: Int?,
                            progressVolumes: Int?,
                            repeatCount: Int?,
                            isPrivate: Bool?,
                            notes: String?,
                            customLists: [String?]?,
                            hiddenFromStatusLists: Bool?,
                            startedAt: FuzzyDateInput?,
                            completedAt: FuzzyDateInput?,
                            completion: @escaping (_ success: Bool) -> ()) {
        AnilistNetworkClient.shared.apollo.perform(mutation: SaveMediaListEntryMutation(
                                                                                        mediaId: mediaId,
                                                                                        status: status,
                                                                                        score: score,
                                                                                        progress: progress,
                                                                                        progressVolumes: progressVolumes,
                                                                                        repeat: repeatCount,
                                                                                        private: isPrivate,
                                                                                        notes: notes,
                                                                                        customLists: customLists,
                                                                                        hiddenFromStatusLists: hiddenFromStatusLists,
                                                                                        startedAt: startedAt,
                                                                                        completedAt: completedAt)) { result in
            switch result {
            case .success(let graphQLResult):
                print(graphQLResult)
                completion(true)
            case .failure(let error):
                print("Failure! Error: \(error.localizedDescription)")
                completion(false)
            }
        }
    }
}
