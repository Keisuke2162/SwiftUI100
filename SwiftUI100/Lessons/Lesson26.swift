//
//  Lesson26.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/10.
//

import SwiftUI

// MEMO: タップ時に表示するアラートのitem.nameがよくわからん内容になる。要調査

struct Lesson26: View {
    @State private var listItem: [Item] = [
        Item(name: "One"),
        Item(name: "Two"),
        Item(name: "Three"),
        Item(name: "Four"),
        Item(name: "Five")
    ]
    @State private var isShowAlert = false

    var body: some View {
        List(listItem) { item in
            Button {
                self.isShowAlert = true
            } label: {
                Text(item.name)
                    .foregroundColor(Color.black)
            }.alert(item.name, isPresented: $isShowAlert) {
                Button("OK") {}
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("Message")
            }
        }
    }

    private struct Item: Identifiable {
        let id = UUID()
        let name: String
    }
}

struct Lesson26_Previews: PreviewProvider {
    static var previews: some View {
        Lesson26()
    }
}
