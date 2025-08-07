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
    
    var body: some View {
        Text(text)
            .font(font.font)
            .foregroundColor(font.color)
    }
    
    enum GameFont {
        case title
        case description
        case primaryButton
        case secondaryButton
        case picker
        case titleItem
        case keyTitle
        case whiteInfo
        case error
        
        var font: Font {
            switch self {
            case .title:
                return Font.title.bold()
            case .description:
                return .subheadline
            case .primaryButton, .secondaryButton:
                return .headline.bold()
            case .picker:
                return .system(size: 12, weight: .light)
            case .titleItem:
                return .system(size: 16, weight: .semibold)
            case .keyTitle:
                return .system(size: 14, weight: .semibold)
            case .whiteInfo:
                return .system(size: 12, weight: .semibold)
            case .error:
                return .subheadline
            }
        }
        
        var color: Color {
            switch self {
            case .description:
                return .gray
            case .primaryButton, .whiteInfo:
                return .white
            case .error:
                return .red
            default:
                return .black
                
            }
        }
    }
}

#Preview {
    GameText(text: "UpComing Games", font: .title)
}
