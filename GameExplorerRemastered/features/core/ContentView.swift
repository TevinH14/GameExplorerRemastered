//
//  ContentView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isMenuOpen = false

    var body: some View {
        ZStack {
            // Main content
            NavigationView {
                VStack {
                    Text("Home Screen")
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                }
                .navigationBarTitle("Home", displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    withAnimation {
                        isMenuOpen.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                        .padding()
                })
            }
            .disabled(isMenuOpen)

            // Side Menu
            if isMenuOpen {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            isMenuOpen = false
                        }
                    }

                MenuView()
                    .frame(width: 250)
                    .transition(.move(edge: .leading))
                    .zIndex(1)
            }
        }
    }
}

#Preview {
    ContentView()
}
