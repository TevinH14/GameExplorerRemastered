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
    
    // update and add location argument to be able to better track api call.
    func fetchGames(from urlString: String, logTitle: String) async throws -> GameResponse? {
        print("GameRepository: \(logTitle) url \(urlString)")
        
        print("GameRepository: try to get games for \(logTitle)")
        guard let data: Data = try await networkService.fetchData(with: urlString) else {
            print("GameRepository: error getting data \(logTitle)")
            return nil
        }
        print("GameRepository: got some data: \(data) for \(logTitle)")
        // return results if
        let results = try jsonDecoder.decode(GameResponse.self, from: data)
        return results
    }
    
    func getGames() async throws -> GameResponse? {
        return try await fetchGames(
            from: RAWGAPI.base_Url
            + RAWGAPI.GAMES
            + RAWGAPI.getApiKey(),
            logTitle: "getGames"
        )
    }
    
    func getTrendingGames() async throws -> GameResponse? {
        let datesResults = GameDate().getYearDates()
        return try await fetchGames(
            from: RAWGAPI.base_Url
            + RAWGAPI.GAMES
            + RAWGAPI.getYearsDates(
                start: datesResults.startDate,
                end: datesResults.endDate
            )
            + RAWGAPI.getOrdering(RAWGAPI.DESCENDING_ORDERING)
            + RAWGAPI.getApiKey(),
            logTitle: "getTrendingGames"
        )
    }
    
    //  New: Last 30 Days
    func getLast30DaysGames() async throws -> GameResponse? {
        if let dates = GameDate().getTheLast30Days(GameDate().GetDate()) {
            return try await fetchGames(
                from: RAWGAPI.base_Url
                + RAWGAPI.GAMES
                + RAWGAPI.getYearsDates(
                    start: dates.startDate,
                    end: dates.endDate
                )
                + RAWGAPI.getOrdering(RAWGAPI.DESCENDING_ORDERING) // Popular first
                + RAWGAPI.getApiKey(),
                logTitle: "getLast30DaysGames"
            )
        }
        
        print("GameRepository: error getting getLast30DaysGames")
        return nil
    }
    
    // ✅ New: Upcoming Next 30 Days
    func getUpcoming30DaysGames() async throws -> GameResponse? {
        if let dates = GameDate().getTheNext30Days(GameDate().GetDate()) {
            return try await fetchGames(
                from: RAWGAPI.base_Url
                + RAWGAPI.GAMES
                + RAWGAPI.getYearsDates(
                    start: dates.startDate,
                    end: dates.endDate
                )
                + RAWGAPI.getOrdering(RAWGAPI.DESCENDING_ORDERING)
                + RAWGAPI.getApiKey(),
                logTitle: "getUpcoming30DaysGames"
            )
        }
        
        print("GameRepository: error getting getUpcoming30DaysGames")
        return nil
    }
    
    // ✅ New: Top of All Time
    func getTopOfAllTimeGames() async throws -> GameResponse? {
        return try await fetchGames(
            from: RAWGAPI.base_Url
            + RAWGAPI.GAMES
            + RAWGAPI.getOrdering("-rating")
            + RAWGAPI.getApiKey(),
            logTitle: "getTopOfAllTimeGames"
        )
    }
    
    // ✅ New: Last Year Popular Games
    func getLastYearPopularGames() async throws -> GameResponse? {
        if let dates = GameDate().getLastYearDates() {
            return try await fetchGames (
                from: RAWGAPI.base_Url
                + RAWGAPI.GAMES
                + RAWGAPI.getYearsDates(
                    start: dates.startDate,
                    end: dates.endDate
                )
                + RAWGAPI.getOrdering(RAWGAPI.DESCENDING_ORDERING)
                + RAWGAPI.getApiKey(),
                logTitle: "getLastYearPopularGames"
            )
        }
        
        print("GameRepository: error getting getLastYearPopularGames")
        return nil
    }
    
    
    //    func getSearchedGame(with searchString: String) async throws -> [Game]? {
    //        <#code#>
    //    }
}
