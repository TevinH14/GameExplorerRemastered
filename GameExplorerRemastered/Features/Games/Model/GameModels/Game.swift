//
//  Games.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/28/25.
//

import Foundation

import Foundation

// MARK: - GameReponse
struct GameResponse: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Game]
}

// MARK: - Game Object

struct Game: Identifiable, Decodable {
    let id: Int?
    let slug: String?
    let name: String?
    let released: String?
    let tba: Bool?
    let background_image: String?
    let rating: Double?
    let rating_top: Int?
    let ratings: [Rating]?
    let ratings_count: Int?
    let reviews_text_count: Int?
    let added: Int?
    let added_by_status: addedByStatus?
    let metacritic: Int?
    let playtime: Int?
    let suggestions_count: Int
    let updated: String?
    let user_game: String?
    let reviews_count: Int?
    let saturated_color: String?
    let dominant_color: String?
    let parent_platforms: [Platform]?
    let esrbRating: ESRBRating?
    let genres: [Genre]?
    let stores: [GameStore]?
    let clip: String? // or make a separate struct if clip is not null
    let tags: [Tag]?
    let esrb_rating: ESRBRating
    let shortScreenshots: [Screenshot]?
}

// MARK: - Rating Object
struct Rating: Decodable {
    let id: Int
    let title: String
    let count: Int
    let percent: Double
}


// MARK: - ESRBRating Object
struct ESRBRating: Decodable {
    let id: Int
    let slug: String
    let name: String
}

// MARK: - Platform Object
struct Platform: Decodable {
    let id: Int
    let name: String
    let slug: String
}

// MARK: - Requirements Object
struct Requirements: Decodable {
    let minimum: String?
    let recommended: String?
}

struct Genre: Decodable {
    let id: Int
    let name: String
    let slug: String
    let games_count: Int
    let image_background: String
}

struct GameStore: Decodable {
    let id: Int
    let store: StoreDetail
}

struct StoreDetail: Decodable {
    let id: Int
    let name: String
    let slug: String
    let domain: String
    let games_count: Int
    let image_background: String

}

struct Tag: Decodable {
    let id: Int
    let name: String
    let slug: String
    let language: String
    let games_count: Int
    let image_background: String
}

struct Screenshot: Decodable {
    let id: Int
    let image: String
}

struct addedByStatus: Decodable {
    let yet: Int
    let owned: Int
    let beaten: Int
    let toplay: Int
    let dropped: Int
    let playing: Int
}


