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
                DisplayCardView(displayImage: game.background_image!, title: game.name!)
            }
        }
    }
}

#Preview {
    GameItem(gameItem: .preview)
}
