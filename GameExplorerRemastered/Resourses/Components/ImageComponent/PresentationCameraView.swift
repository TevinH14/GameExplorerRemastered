//
//  PresentationCameraView.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/13/25.
//

import Foundation
import SwiftUI
import AVFoundation

enum PresentationCameraViewType {
    case camera
    case gallery
    case none
}

struct PresentationCameraView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var selectedImage: UIImage?
    @State var isPhotoTaken: Bool = false
    @State private var userValidatedPhoto = false
    @State var imageSource: PresentationCameraViewType = .gallery
    
    var body: some View {
        NavigationView {
            HStack {
                if isPhotoTaken {
//                    previewImage
                } else {
                    ImagePicker(selectedImage: $selectedImage,
                                isPhotoTaken: $isPhotoTaken,
                                imageSource: imageSource)
                }
            }.ignoresSafeArea()
        }
    }
    
    private var previewImage: some View {
        NavigationView {
            ZStack {
                Image(uiImage: selectedImage ?? UIImage(named: "rectangleCar")!)
                    .resizable()
                    .scaledToFit()
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {
                            isPhotoTaken = false
                        }, label: {
                            Image("backWhite")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                                .padding(.leading, 25)
                                .padding(.bottom, 50)
                        })
                        Spacer()
                        Button(action: {
                            if isPhotoTaken {
                                userValidatedPhoto.toggle()
                            }
                        }, label: {
                            Image("checkGreen")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.green)
                                .padding(.trailing, 25)
                                .padding(.bottom, 50)
                        })
                    }
                }
            }
        }
    }
}

struct PresentationCameraViewPreview: PreviewProvider {
    static var previews: some View {
        PresentationCameraView(selectedImage: .constant(nil), imageSource: .gallery)
    }
}
