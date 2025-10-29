//
//  HomeViewModel.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation
import UIKit
import SwiftUI

@MainActor
final class HomeViewModel: HomeViewModelProtocol {
    @Published var isLoaded: Bool
        
    var repository: GameRepositoryProtocol
    
    @Published var trendingResponse: GameResponse?
    @Published var upcomingResponse: GameResponse?
    @Published var recentReleasedResponse: GameResponse?
    
    @Published var trendingList: [Game]
    @Published var upcomingList: [Game]
    @Published var recentReleasedList: [Game]

    init(repository: GameRepositoryProtocol) {
        self.isLoaded = false
        self.repository = repository
        self.trendingList = []
        self.upcomingList = []
        self.recentReleasedList = []

    }
    
    //MARK: - Fetch Games HomeViewModel
    func fetchGames() {
        Task {
            do {
                
                //fetch trending games
                if let tendingGames = try await self.repository.getTrendingGames() {
                    self.trendingResponse = tendingGames
                    self.trendingList = tendingGames.results
                    print("HomeViewModel: is trendingList empty \(trendingList.isEmpty)")

                }
                
                // fetch upcoming games
                if let upcomingGames = try await self.repository.getUpcoming30DaysGames() {
                    self.upcomingResponse = upcomingGames

                    self.upcomingList = upcomingGames.results
                    print("HomeViewModel: is upcomingList empty \(upcomingList.isEmpty)")

                }
                
                //fetch last 30 days games // recently released
                if let recentReleasedsGames = try await self.repository.getLast30DaysGames() {
                    self.recentReleasedResponse = recentReleasedsGames
                    self.recentReleasedList = recentReleasedsGames.results
                    print("HomeViewModel: is recentReleasedList empty \(recentReleasedList.isEmpty)")

                }
                
                    
                if (!trendingList.isEmpty && !upcomingList.isEmpty && !recentReleasedList.isEmpty) {
                    isLoaded = true
                    print("HomeViewModel: is loaded \(isLoaded)")

                }
                
            } catch {
                print(error.localizedDescription)
                
            }
        }
    }
}

