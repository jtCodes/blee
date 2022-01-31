//
//  NetworkInterceptorProvider.swift
//  blee
//
//  Created by J Tan on 1/30/22.
//

import Foundation
import Apollo

class NetworkInterceptorProvider: DefaultInterceptorProvider {
    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(TokenAddingInterceptor(), at: 0)
        return interceptors
    }
}
