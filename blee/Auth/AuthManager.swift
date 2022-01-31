//
//  AuthManager.swift
//  blee
//
//  Created by J Tan on 1/30/22.
//

import Foundation

enum AnilistKeychainKey: String {
    case accessToken,
         expirationDate
}

class AuthManager: ObservableObject {
    static let shared: AuthManager = AuthManager()
    private let keychain = KeychainSwift()
    @Published var isAuthed: Bool = false
    @Published var authedUser: User?
    
    init() {
        fetchViewerDetail()
    }
    
    func fetchViewerDetail() {
        AnilistNetworkClient.shared.fetchViewerDetail() { viewerDetail in
            if let viewerDetail = viewerDetail {
                self.authedUser = viewerDetail
                self.isAuthed = true
                
                AnilistNetworkClient.shared.fetchMediaListCollection(userId: viewerDetail.id,
                                                                     userName: viewerDetail.name,
                                                                     type: .manga)
            }
        }
    }
    
    func onReceiveAuthUrlScheme(url: URL) {
        let authDetail: AuthDetail = parseAnilistAuthResponse(url: url)
        keychain.set(authDetail.token,
                     forKey: AnilistKeychainKey.accessToken.rawValue)
        keychain.set(String(authDetail.expirationDate.timeIntervalSince1970),
                     forKey: AnilistKeychainKey.expirationDate.rawValue)
        fetchViewerDetail()
    }
    
    fileprivate func parseAnilistAuthResponse(url: URL) -> AuthDetail {
        let splittedByType = url.absoluteString
            .components(separatedBy: "#")[1]
            .components(separatedBy: "&")
        let accessToken: String = splittedByType[0].components(separatedBy: "=")[1]
        // TODO: convert expires in to year
        let expireInSeconds: Int = Int(splittedByType.last?.components(separatedBy: "=")[1] ?? "") ?? -1
        let today: Date = Date()
        let tokenExpirationDate = Calendar.current.date(byAdding: .year, value: 1, to: today)!
        
        return AuthDetail(token: accessToken, expirationDate: tokenExpirationDate)
    }
}
