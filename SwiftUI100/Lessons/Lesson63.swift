//
//  Lesson63.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/05.
//

import SwiftUI

struct Lesson63: View {
    @State private var text = ""

    var body: some View {
        VStack {
            TextField("Text", text: $text)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
        }
    }
}

struct Lesson63_Previews: PreviewProvider {
    static var previews: some View {
        Lesson63()
    }
}
