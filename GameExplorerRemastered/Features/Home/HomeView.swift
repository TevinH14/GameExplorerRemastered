//
//  HomeView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation
import SwiftUI

struct HomeView<homeViewModel: HomeViewModelProtocol>: View {
    @ObservedObject var viewModel: homeViewModel
    var body: some View {
        ZStack {
            VStack {
                if (viewModel.gameList.isEmpty) {
                    ProgressView()
                } else {
                    GameCarousel(header: "games", gameList: viewModel.gameList)

                }
            }
            .onAppear() {
                viewModel.fetchGames()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    class MockHomeViewModel: HomeViewModelProtocol {
       @Published var repository: any GameRepositoryProtocol = MockGameRepository()
        @Published var gameList: [Game] = [.preview, .preview]
                
        func fetchGames() {}
        
    
    }

    static var previews: some View {
        HomeView(viewModel: MockHomeViewModel())
    }
}
