//
//  GameSpace.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/13/25.
//

import Foundation
import SwiftUI

struct GameSpace: View {
    let height: CGFloat?
    let width: CGFloat?
    
    init(height: CGFloat? = 0, width: CGFloat? = 0) {
        self.height = height
        self.width = width
    }
    
    var body: some View {
        Spacer()
            .frame(width: width, height: height)
    }
}
