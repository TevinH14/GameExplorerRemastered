//
//  GameViewModelProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation

protocol GameViewModelProtocol: ObservableObject {
    var gameList: GameResponse? { get set }
    
    func fetchGames()
    
    func searchGame()
    
    func getNextPage()
}
