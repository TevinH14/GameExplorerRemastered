//
//  MenuView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/26/25.
//

import Foundation
import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
//            Image("Landscape_4")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
            Text("User Name")
            Spacer()
            Label("Home", systemImage: "house")
            Label("Games", systemImage: "gamecontroller")
            Label("Developer", systemImage: "shared.with.you")
            Label("Producers", systemImage: "gamecontroller")
            Label("Creators", systemImage: "person.crop.circle")
            Label("Settings", systemImage: "gearshape")
            Spacer()
            Label("Logout", systemImage: "arrow.backward.square")
            Spacer()
        }
        .padding(.top, 60)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MenuView()
}
