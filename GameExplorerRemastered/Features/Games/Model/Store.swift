//
//  Store.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/4/25.
//

import Foundation

struct StoreLink: Codable, Identifiable {
    let id: Int
    let store: Store
}

// MARK: - Store Detail
struct Store: Codable {
    let id: Int?
    let name: String?
    let slug: String?
    let domain: String?
    let gamesCount: Int?
    let imageBackground: String?
}
