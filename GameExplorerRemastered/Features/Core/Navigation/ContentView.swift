//
//  ContentView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isMenuOpen = false
    @State private var selectedMenu: MenuItem = .home // Track the selected menu item

    var body: some View {
        ZStack(alignment: .leading) {
            // Main content changes based on selection
            NavigationView {
                VStack {
                    switch selectedMenu {
                    case .home:
                        HomeView(viewModel: HomeViewModel(repository: GameRepository()))
                    case .games:
                        Text("Games Screen")
                            .font(.largeTitle)
                            .padding()
                    case .developer:
                        Text("Developer Screen")
                            .font(.largeTitle)
                            .padding()
                    case .producers:
                        Text("Producers Screen")
                            .font(.largeTitle)
                            .padding()
                    case .creators:
                        Text("Creators Screen")
                            .font(.largeTitle)
                            .padding()
                    case .collection:
                        Text("Collection Screen")
                            .font(.largeTitle)
                            .padding()
                    case .settings:
                        Text("Settings Screen")
                            .font(.largeTitle)
                            .padding()
                    case .logout:
                        Text("Logged Out")
                            .font(.largeTitle)
                            .padding()
                    }
                    Spacer()
                }
                .navigationBarTitle(selectedMenu.rawValue, displayMode: .inline)
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

                MenuView(selectedMenu: $selectedMenu, isMenuOpen: $isMenuOpen)
                    .frame(maxWidth: 250, maxHeight: UIScreen.screenHeight)
                    .transition(.move(edge: .leading))
                    .ignoresSafeArea()
                    .animation(.easeInOut, value: isMenuOpen)
                    .zIndex(1)
            }
        }
    }
}


#Preview {
    ContentView()
}
