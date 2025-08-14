//
//  GameButton.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation
import SwiftUI

struct GameButton: View {
    
    var typeButton: ButtonType
    var action: () -> Void
    let width: CGFloat = UIScreen.main.bounds.width * 0.8053
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                typeButton.font
                    .frame(width: width,
                           height: width * 0.1656)
            }
            .background(typeButton.background)
            .foregroundColor(typeButton.foregroundColor)
            .cornerRadius((width * 0.1656) / 2)
        }
    }
}

#Preview {
    GameButton(typeButton: .gameItemButton("See all"),
               action: {
        
    })
}
