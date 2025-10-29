//
//  HomeViewModelProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation

@MainActor
protocol HomeViewModelProtocol: ObservableObject {
    //flags
    var isLoaded: Bool { get set }
    
    //repository
    var repository: GameRepositoryProtocol { get set }
    
    var trendingResponse: GameResponse? { get set }
    var upcomingResponse: GameResponse? { get set }
    var recentReleasedResponse: GameResponse? { get set }
    
    //list
    var trendingList: [Game] { get set }
    var upcomingList: [Game] { get set }
    var recentReleasedList: [Game] { get set }
    
    // functions 
    func fetchGames()
}
