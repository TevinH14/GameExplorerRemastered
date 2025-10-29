//
//  GameListView.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 9/12/25.
//

import Foundation
import SwiftUI

struct GamesCollectionView: View {
    @State private var isGridView = false // toggle between list/grid
    let gameResponse: GameResponse
    let title: String
    
    // Two columns for grid layout
    private let gridColumns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                if isGridView {
                    // GRID VIEW
                    LazyVGrid(columns: gridColumns, spacing: 16) {
                        ForEach(gameResponse.results) { game in
                            GameItem(gameItem: game)
                        }
                    }
                    .padding()
                } else {
                    // LIST VIEW
                    LazyVStack(alignment: .leading, spacing: 12) {
                        ForEach(gameResponse.results) { game in
                            GameRow(game: game)
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationTitle(title)
        .animation(.easeInOut, value: isGridView)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    isGridView.toggle()
                }) {
                    Image(
                        systemName: isGridView
                            ? "list.bullet" : "square.grid.2x2"
                    )
                }
            }
        }
    }
}

#Preview {
    GamesCollectionView(gameResponse: .preview, title: "Game Title")
}
