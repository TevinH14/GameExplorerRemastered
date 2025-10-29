//
//  GameRow.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 9/12/25.
//

import Foundation
import SwiftUI

struct GameRow: View {
    let game: Game
    
    var body: some View {
        HStack(spacing: 12) {
            AsyncImage(url: URL(string: game.background_image!)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .cornerRadius(8)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(game.name!)
                    .font(.headline)
                    .lineLimit(1)
                Text(game.genres![0].name!)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}

#Preview {
    GameRow(game: .preview)
}
