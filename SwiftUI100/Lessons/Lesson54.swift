//
//  Lesson54.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/25.
//

import SwiftUI

struct Lesson54: View {
    @State private var isShowSheet = false
    @State private var inputText: String = ""

    var body: some View {
        VStack(spacing: 16) {
            Text("Input Text")
            TextField("Text", text: $inputText)
                .textFieldStyle(.roundedBorder)
                .frame(width: 300)
            Button {
                if !inputText.isEmpty {
                    isShowSheet = true
                }
            } label: {
                Text("Open Sheet")
            }
            .sheet(isPresented: $isShowSheet) {
                Lesson54Sheet(text: inputText)
            }
        }
    }
}

struct Lesson54Sheet: View {
    let text: String

    var body: some View {
        Text(text)
    }
}

struct Lesson54_Previews: PreviewProvider {
    static var previews: some View {
        Lesson54()
    }
}
