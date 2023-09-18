//
//  Lesson79ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/18.
//

import SwiftUI

struct Lesson79ContentView: View {
    @State private var selectedImage: UIImage? = nil
    @State private var isShowImagePicker: Bool = false

    var body: some View {
        VStack {
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            } else {
                Text("No Image")
                    .frame(width: 200, height: 200)
            }

            Button {
                isShowImagePicker.toggle()
            } label: {
                Text("Select Image")
            }
            .sheet(isPresented: $isShowImagePicker) {
                Lesson79SelectImageView(selectedImage: $selectedImage)
            }
        }
    }
}

struct Lesson79ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson79ContentView()
    }
}
