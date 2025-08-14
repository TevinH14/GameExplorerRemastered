//
//  ButtonType.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation
import SwiftUI

enum ButtonType {
    case gamePrimaryButton(String)
    case gameSecondaryButton(String)
    case gameItemButton(String)
    
    var font: GameText {
        switch self {
        case .gamePrimaryButton(let title):
            GameText(text: title, font: .primaryButton)
        case .gameSecondaryButton(let title):
            GameText(text: title, font: .secondaryButton)
        case .gameItemButton(let title):
            GameText(text: title, font: .description)
        }
    }
    
    var background: Color {
        switch self {
        case .gamePrimaryButton( _):
            Color.blue
        case .gameSecondaryButton( _):
            Color.white
        case .gameItemButton( _):
            Color.clear
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .gamePrimaryButton( _):
            Color.white
        case .gameSecondaryButton( _):
            Color.blue
        case .gameItemButton( _):
            Color.black
        }
    }
}
