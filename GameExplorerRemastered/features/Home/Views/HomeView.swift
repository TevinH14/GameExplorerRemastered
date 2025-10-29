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
        NavigationStack {
            
            VStack {
                if !viewModel.isLoaded {
                    ProgressView()
                } else {
                    ScrollView {
                        
                        GameCarousel(
                            header: "Upcoming",
                            gameResponse: viewModel.upcomingResponse!
                        )
                        GameCarousel(
                            header: "Recently Released",
                            gameResponse: viewModel.recentReleasedResponse!
                        )
                        GameCarousel(
                            header: "Trending",
                            gameResponse: viewModel.trendingResponse!
                        )
                    }
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .onAppear {
            viewModel.fetchGames()
        }
    }
}

//MARK: - Home View Preview
struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView(viewModel: MockHomeViewModel(repository: GameRepository()))
    }
}
