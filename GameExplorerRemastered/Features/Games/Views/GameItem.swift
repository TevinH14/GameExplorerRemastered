//
//  GameCatorgies.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/4/25.
//

import Foundation
import SwiftUI

struct GameItem: View {

    let gameItem: Game?

    var body: some View {
        ZStack {
            if let game = gameItem {
                Rectangle()
                    .frame(width: 100, height: 80)
                    .overlay(
                        Image(uiImage: UIImage(systemName: "person.fill")! )
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .padding(20)
                    )
                GameText(text: "update later", font: .titleItem)
            }
        }
        .cornerRadius(10)
    }
}

#Preview {
    GameItem(gameItem: nil)
}
