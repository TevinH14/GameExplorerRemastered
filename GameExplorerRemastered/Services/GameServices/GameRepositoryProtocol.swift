//
//  GameRepositoryProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation

protocol GameRepositoryProtocol {
    func getGames() async throws -> GameResponse?
    func getTrendingGames() async throws -> GameResponse?
    func getLast30DaysGames() async throws -> GameResponse?
    func getUpcoming30DaysGames() async throws -> GameResponse?
    func getTopOfAllTimeGames() async throws -> GameResponse?
    func getLastYearPopularGames() async throws -> GameResponse?
//    func getSearchedGame(with searchString: String ) async throws -> [Game]?

    
}
