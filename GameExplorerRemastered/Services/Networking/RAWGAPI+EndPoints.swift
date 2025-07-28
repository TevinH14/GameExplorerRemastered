//
//  RAWGAPI+Games.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/28/25.
//

import Foundation

extension RAWGAPI {
    
    //MARK: GAMES ENDPOINTS
    static let GAMES: String = "games"
    static let ADDITIONS: String = "/additions"
    static let DEVELOPMENT_TEAM: String = "/development-team"
    static let GAME_SERIES: String = "/game-series"
    static let PARENT_GAMES: String = "/parent-games"
    static let SCREENSHOTS: String = "/screenshots"
    static let GAME_STORES_LINKS: String = "/stores"
    static let ACHIEVEMENTS: String = "/achievements"
    static let GAME_TRAILERS: String = "/movies"
    
    //MARK: genres endpoints
    static let GENRES: String = "genres"
    
    //MARK: Platform Endpoints
    
    static let PLATFORMS: String = "platforms"
    
    static let PARTENT_PLATFORMS = "/lists/parents"
    
    //MARK: Platform Endpoints

    static let DEVELOPERS: String = "developers"

    
    //MARK: Get games functions
    static func getGamesInfo(gameKey: String, endPoint: String) -> String {
        return base_Url + GAMES + "/" + gameKey + endPoint
    }
    
    static func getGameDetails(gameID: String) -> String {
        return base_Url + GAMES + "/" + gameID
    }
    
    //MARK: Get genres functions
    static func getGenreDetails(genreID: String) -> String {
        return base_Url + GENRES + "/" + genreID
    }
    
    //MARK: Get platforms functions
    static func getPlatformsDetails(platformsID: String) -> String {
        return base_Url + PLATFORMS + "/" + platformsID
    }
    
    //MARK: Get developers functions
    static func getDevelopersDetails(platformsID: String) -> String {
        return base_Url + PLATFORMS + "/" + platformsID
    }
    
}
