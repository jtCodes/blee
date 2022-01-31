//
//  AnilistNetworkClient.swift
//  blee
//
//  Created by J Tan on 1/28/22.
//

import Foundation
import Apollo

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
    
    func fetchViewerDetail() {
        
    }
}
