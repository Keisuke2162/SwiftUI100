//
//  Lesson48.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/23.
//

import SwiftUI

// MEMO: AppStorageはUserDefaultの変更を監視してくれるらしい

struct Lesson48: View {
    @AppStorage("NAME") var name: String = ""
    @State private var nameText: String = ""

    var body: some View {
        VStack(spacing: 24) {
            Text("name is \(name)")
            TextField("Text", text: $nameText)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)

            Button {
                name = nameText
            } label: {
                Text("Save Local")
            }

            Button {
                UserDefaults.standard.set(nameText, forKey: "NAME")
            } label: {
                Text("Save UserDefault")
            }
        }
    }
}

struct Lesson48_Previews: PreviewProvider {
    static var previews: some View {
        Lesson48()
    }
}
