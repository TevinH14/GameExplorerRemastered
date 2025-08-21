//
//  GameRepository.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation

struct GameRepository: GameRepositoryProtocol {
    private let networkService = NetworkService()
    private let jsonDecoder = JSONDecoder()
    
    func fetchGames(from urlString: String) async throws -> [Game]? {
        print("GameRepository: try to get movies")
            guard let data: Data = try await networkService.fetchData(with: urlString) else {
                print("error getting data")
                return []
            }
            print("GameRepository: got some data: \(data)")
            // return results if
            let results = try jsonDecoder.decode(GameResponse.self, from: data)
            return results.results
    }
    
    func getGames() async throws -> [Game]? {
        return try await fetchGames(from: RAWGAPI.base_Url
                          + RAWGAPI.GAMES
                          + RAWGAPI.getApiKey()
        )
    }
    
    
//    func getSearchedGame(with searchString: String) async throws -> [Game]? {
//        <#code#>
//    }
}
