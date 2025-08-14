//
//  MenuView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/26/25.
//

import Foundation
import SwiftUI

struct MenuView: View {
    @Binding var selectedMenu: MenuItem
    @Binding var isMenuOpen: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            GameSpace(height: 8)
            UserProfile()
            GameSpace(height: 16)

            // Main features
            menuButton(.home, icon: "house")
            menuButton(.games, icon: "gamecontroller")
            menuButton(.developer, icon: "shared.with.you")
            menuButton(.producers, icon: "building.fill")
            menuButton(.creators, icon: "person.fill")
            menuButton(.collection, icon: "rectangle.stack.fill")
            menuButton(.settings, icon: "gear")

            GameSpace(height: 96)
            menuButton(.logout, icon: "arrow.backward.square")
            GameSpace(height: 64)
        }
        .padding(.top, 60)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.blue)
        .edgesIgnoringSafeArea(.all)
    }

    // Helper for clickable menu items
    private func menuButton(_ menu: MenuItem, icon: String) -> some View {
        Button(action: {
            selectedMenu = menu
            withAnimation {
                isMenuOpen = false
            }
        }) {
            GameLabel(labelName: menu.rawValue, iconName: icon)
        }
        .buttonStyle(PlainButtonStyle())
    }
}


#Preview {
    MenuView(selectedMenu: .constant(.home), isMenuOpen: .constant(false))
}
