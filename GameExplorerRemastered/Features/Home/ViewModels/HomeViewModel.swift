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
    var repository: any GameRepositoryProtocol
    @Published var gameList: [Game]
    
    init(repository: any GameRepositoryProtocol) {
        self.repository = repository
        self.gameList = []
    }
    
    func fetchGames() async {
        Task {
            do {
                if let games = try await self.repository.getGames() {
                    self.gameList = games
                }
               
            } catch {
                print(error.localizedDescription)
                
            }
        }
    }
}

