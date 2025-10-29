//
//  GameGridCard 2.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 9/12/25.
//


struct GameGridCard: View {
    let game: Game
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: game.background_image!)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 120)
                    .cornerRadius(8)
            } placeholder: {
                ProgressView()
            }
            
            Text(game.name!)
                .font(.caption)
                .lineLimit(1)
        }
        .frame(maxWidth: .infinity)
    }
}
