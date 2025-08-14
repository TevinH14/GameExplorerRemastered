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
            HStack {
                Text(header)
                    .font(.title)
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
                Spacer()
            }.padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(gameList) { gameItem in
                        NavigationLink {
                            //UPDATE: game detail view
                        } label: {
                            //UPDATE: game card place here
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


struct GameCarouselPreview: PreviewProvider {
    static var previews: some View{
        GameCarousel(header: "UpComing Games", gameList: [])
    }
}
