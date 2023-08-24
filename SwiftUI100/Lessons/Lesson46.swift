//
//  Lesson46.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/22.
//

import SwiftUI

struct Lesson46: View {
    @State private var isEditing = false
    @State private var text = ""

    var body: some View {
        VStack {
            Text(isEditing ? "Editing" : "Not Editing")
            TextField("Text", text: $text) { isEditing in
                self.isEditing = isEditing
            }
            .textFieldStyle(.roundedBorder)
            .frame(width: 200)
        }
    }
}

struct Lesson46_Previews: PreviewProvider {
    static var previews: some View {
        Lesson46()
    }
}
