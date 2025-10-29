//
//  GameCarousel.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation
import SwiftUI

struct GameCarousel: View {
    @State var goToGameListView: Bool = false
    let header: String
    let gameResponse: GameResponse
    
    var body: some View {
        NavigationStack{
            VStack {
                GameSpace(height: 24)
                GameEndIconLabel(
                    title: header,
                    font: .title,
                    endIcon: "chevron.right",
                    alignment: .leading,
                    width: UIScreen.screenWidth
                )
                .onTapGesture {
                    goToGameListView.toggle()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 24) {
                        ForEach(gameResponse.results.prefix(8)) { gameItem in
                            NavigationLink {
                                //UPDATE: game detail view
                            } label: {
                                GameItem(gameItem: gameItem)
                                
                            }
                        }
                    }
                }
                .navigationDestination(isPresented: $goToGameListView) {
                    GamesCollectionView(gameResponse: gameResponse, title: header)
                }
                .padding([.leading, .trailing], 8)
                
            }
            .layoutPriority(1)

            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) 
        
        
    }
}

struct GameCarouselPreview: PreviewProvider {
    static var previews: some View {
        GameCarousel(header: "Trending", gameResponse: .preview)
    }
}
