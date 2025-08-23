//
//  HomeViewModelProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation

protocol HomeViewModelProtocol: ObservableObject {
    var repository: GameRepositoryProtocol { get }
    var gameList: [Game] { get }
    
    func fetchGames()
}
