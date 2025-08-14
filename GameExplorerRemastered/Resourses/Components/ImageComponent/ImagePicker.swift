//
//  ImagePicker.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/13/25.
//

import Foundation
import SwiftUI
import PhotosUI

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var isPresented
    @Binding var selectedImage: UIImage?
    @Binding var isPhotoTaken: Bool
    @State var imageSource: PresentationCameraViewType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = imageSource == .camera ? .camera : .photoLibrary
        imagePicker.allowsEditing = false
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePicker: self)
    }
}

final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var imagePicker: ImagePicker
    
    init(imagePicker: ImagePicker) {
        self.imagePicker = imagePicker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        imagePicker.selectedImage = selectedImage
        imagePicker.isPhotoTaken.toggle()
        imagePicker.isPresented.wrappedValue.dismiss()
        // ---- Save image only for testing
        //UIImageWriteToSavedPhotosAlbum(selectedImage, nil, nil, nil)
    }
}

