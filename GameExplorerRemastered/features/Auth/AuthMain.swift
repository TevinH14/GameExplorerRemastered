//
//  AuthMain.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 8/24/25.
//

import Foundation
import SwiftUI

struct AuthMain: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                Image("gameExplorer")
                    .imageScale(.large)
                    .frame(width: UIScreen.screenWidth / 1.5, height: UIScreen.screenHeight / 4)
                    .aspectRatio(contentMode: .fit)

                Spacer()
                
                GameButton(typeButton: .gamePrimaryButton("Sign Up"), action: {
                    
                })
                
                GameButton(typeButton: .gamePrimaryButton("Login"), action: {
                    
                })
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    AuthMain()
}
