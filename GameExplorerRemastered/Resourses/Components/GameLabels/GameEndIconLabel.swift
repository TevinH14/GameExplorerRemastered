//
//  GameEndIconLabel.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation
import SwiftUI

struct GameEndIconLabel: View {
    let title: String
    let font: GameFont
    let endIcon: String
    
    var body: some View {
        ZStack {
            HStack {
                HStack {
                    GameText(text: title, font: font)
                    Image(systemName: endIcon)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    GameEndIconLabel(title: "Trending", font: .title, endIcon: "arrow.right")
}
