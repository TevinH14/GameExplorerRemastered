//
//  UserImage.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/13/25.
//

import Foundation
import SwiftUI

struct UserImage: View {
    @State private var profileImage: UIImage? = nil
    @State private var showOptions = false
    @State private var showCamera = false
    @State private var imageSource: PresentationCameraViewType = .none
    
    var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .fill(Color.white)
                .frame(width: 100, height: 80)
                .overlay(
                    Image(uiImage: profileImage ?? UIImage(systemName: "person.fill")!)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white) // Foreground color for SF Symbol
                        .padding(20)
                )
            
        }
        .onTapGesture {
            showOptions = true
        }
        .confirmationDialog("Select image from:", isPresented: $showOptions, titleVisibility: .visible) {
            Button("Camera") {
                imageSource = .camera
                showCamera = true
            }
            Button("Gallery") {
                imageSource = .gallery
                showCamera = true
            }
        }
        .sheet(isPresented: $showCamera) {
            PresentationCameraView(selectedImage: $profileImage)
        }
        
    }
}

#Preview {
    UserImage()
}
