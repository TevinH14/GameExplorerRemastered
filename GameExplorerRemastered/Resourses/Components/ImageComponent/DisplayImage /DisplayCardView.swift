//
//  DisplayCardView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/15/25.
//

import Foundation
import SwiftUI

struct DisplayCardView: View {
    var displayImage : String
    var title : String
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                HStack {
                    DisplayImageView(urlImage: displayImage)
                        .frame(width: UIScreen.screenWidth / 1.5, height: UIScreen.screenHeight / 5.5)
                }
                GameSpace(height: 24)
                HStack {
                    GameText(text: title, font: .keyTitle)
                        .frame(alignment: .leading)
                }
            }
        }
       
    }
}

struct GameDisplayCardViewPreview: PreviewProvider {
    static var previews: some View{
        DisplayCardView(
            displayImage: "https://media.rawg.io/media/games/20a/20aa03a10cda45239fe22d035c0ebe64.jpg",
            title: "Grand Theft Auto V")
    }
}
