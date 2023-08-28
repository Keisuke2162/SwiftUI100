//
//  Lesson56.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/26.
//

import SwiftUI

/// @State は変更することでViewに変更が反映される
/// @Binding は子Viewから親Viewnのプロパティを変更するのに使う

struct Lesson56: View {
    @State private var inputText: String = ""
    @State private var displayText: String = "TEXT"

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Spacer()
                Text(displayText)
                TextField("Input Text", text: $inputText)
                    .frame(width: 300)
                    .textFieldStyle(.roundedBorder)
                Button {
                    if !inputText.isEmpty {
                        displayText = inputText
                    }
                } label: {
                    Text("Update Text")
                }
                NavigationLink {
                    Lesson56ChildView(parentDisplayText: $displayText)
                } label: {
                    Text("Go ChildView")
                }
                Spacer()
            }
        }
    }
}

struct Lesson56ChildView: View {
    @State private var inputText: String = ""
    @Binding var parentDisplayText: String

    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            Text(parentDisplayText)
            TextField("Input Text", text: $inputText)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
            Button {
                if !inputText.isEmpty {
                    parentDisplayText = inputText
                }
            } label: {
                Text("Update Text")
            }
            Spacer()
        }
    }
}

struct Lesson56_Previews: PreviewProvider {
    static var previews: some View {
        Lesson56()
    }
}
