//
//  UserProfile.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/13/25.
//

import Foundation
import SwiftUI

struct UserProfile: View {
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                UserImage()
                GameText(text: "User Name", font: .titleItem)
            }
        }
    }
}

#Preview {
   UserProfile()
}
