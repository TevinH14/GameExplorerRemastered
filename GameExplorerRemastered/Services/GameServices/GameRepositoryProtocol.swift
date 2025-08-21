//
//  GameRepositoryProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation

protocol GameRepositoryProtocol {
    func getGames() async throws -> [Game]?
//    func getSearchedGame(with searchString: String ) async throws -> [Game]?

    
}
