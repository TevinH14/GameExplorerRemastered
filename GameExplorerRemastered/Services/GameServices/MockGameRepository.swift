//
//  MockGameRepository.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation

struct MockGameRepository: GameRepositoryProtocol {
    func getGames() async throws -> [Game]? {
        return [
            .preview,
            .preview
        ]
    }
}
