//
//  MockHomeViewModel.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 9/11/25.
//

import Foundation

class MockHomeViewModel: HomeViewModelProtocol {
    var isLoaded: Bool
    
    var repository: GameRepositoryProtocol
    
    @Published var trendingResponse: GameResponse?
    @Published var upcomingResponse: GameResponse?
    @Published var recentReleasedResponse: GameResponse?
    
    var trendingList: [Game]
    var upcomingList: [Game]
    var recentReleasedList: [Game]
    
    init(repository: GameRepositoryProtocol) {
        self.repository = repository
        
        self.trendingList = []
        self.upcomingList = []
        self.recentReleasedList = []
        
        self.trendingResponse = nil
        self.upcomingResponse = nil
        self.recentReleasedResponse = nil
        
        self.isLoaded = false
        
    }
    
    func fetchGames() {
        print("MockHomeViewModel: fetch games started")
        self.trendingList = [.preview, .preview, .preview]
        self.upcomingList = [.preview, .preview, .preview]
        self.recentReleasedList = [.preview, .preview, .preview]
        self.trendingResponse = .preview
        self.upcomingResponse = .preview
        self.recentReleasedResponse = .preview

        
        
        isLoaded = true
    }

}
