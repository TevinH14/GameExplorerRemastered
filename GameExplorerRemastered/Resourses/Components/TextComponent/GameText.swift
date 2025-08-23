//
//  GameText.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation
import SwiftUI

struct GameText: View {
    
    let text: String
    let font: GameFont
    var alignment: Alignment = .center
    var width: CGFloat? = nil
    
    var body: some View {
        ZStack {
            Text(text)
                .font(font.font)
                .foregroundColor(font.color)
                .frame(width: width, alignment: alignment)
        }
    }
    
}

#Preview {
    GameText(text: "UpComing Games", font: .title)
}

struct GameTextScreenWidthPreview: PreviewProvider {
    static var previews: some View {
        GameText(text: "Trending", font: .title, alignment: .leading, width: UIScreen.screenWidth)
    }
}
