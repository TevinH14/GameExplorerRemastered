//
//  GameCarousel.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation
import SwiftUI

struct GameCarousel: View {
    
    let header: String
    let gameList: [Game]
    
    var body: some View {
        VStack {
            GameSpace(height: 24)
            GameEndIconLabel(title: "Trending", font: .title, endIcon: "arrow.right", alignment: .leading, width: UIScreen.screenWidth)
//            HStack(spacing: 16) {
//                GameText(text: header, font: .title, alignment: .leading, width: UIScreen.screenWidth / 1.1)
//                    .font(.title)
//                    .foregroundColor(.black)
//                    .fontWeight(.heavy)
//            }
            ScrollView(.horizontal,  showsIndicators: false) {
                HStack(spacing: 24) {
                    ForEach(gameList) { gameItem in
                        NavigationLink {
                            //UPDATE: game detail view
                        } label: {
                            GameItem(gameItem: gameItem)
                            
                        }
                    }
                }
            }
        }
    }
}


struct GameCarouselPreview: PreviewProvider {
    static var previews: some View{
        GameCarousel(header: "Trending", gameList: [.preview, .preview])
    }
}
