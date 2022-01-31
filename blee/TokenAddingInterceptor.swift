//
//  TokenAddingInterceptor.swift
//  blee
//
//  Created by J Tan on 1/30/22.
//

import Foundation
import Apollo

class TokenAddingInterceptor: ApolloInterceptor {
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            
            let keychain = KeychainSwift()
            if let token = keychain.get(AnilistKeychainKey.accessToken.rawValue) {
                request.addHeader(name: "Authorization", value: token)
            } // else do nothing
            
            chain.proceedAsync(request: request,
                               response: response,
                               completion: completion)
        }
}
