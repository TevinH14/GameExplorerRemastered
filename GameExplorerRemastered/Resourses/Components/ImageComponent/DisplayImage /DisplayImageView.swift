//
//  DisplayImageView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/15/25.
//

import Foundation
import SwiftUI

struct DisplayImageView: View {
    var urlImage: String
    var body: some View {
        ZStack {
            if let image = getUrl(urlString: urlImage) {
                AsyncImage(url: image) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.screenWidth / 1.5, height: UIScreen.screenHeight / 5.5)
                } placeholder: {
                    Rectangle().fill(.blue)
                        .frame(width:  UIScreen.screenWidth / 1.5, height:  UIScreen.screenHeight / 5.5)
                }
            }
        }
    }
}

//MARK: - GetImage Url
//move to view model if one more function is added
func getUrl(urlString: String) -> URL? {
    let url = URL(string: urlString)
    if let image = url {
        return image
    }
    return nil
}

#Preview {
    DisplayImageView(urlImage: "https://media.rawg.io/media/games/20a/20aa03a10cda45239fe22d035c0ebe64.jpg")
}
