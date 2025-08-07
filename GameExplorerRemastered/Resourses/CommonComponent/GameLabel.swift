//
//  GameLabel.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/5/25.
//

import Foundation
import SwiftUI

struct GameLabel: View {
    var labelName: String
    var iconName: String
    
    var body: some View {
        Label {
            GameText(text: labelName, font: .primaryButton)

           
        } icon: {
            Image(systemName: iconName)
                .foregroundColor(.white)

        }
    }
}
