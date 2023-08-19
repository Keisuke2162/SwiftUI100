//
//  Lesson35.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/19.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var image: String
    var name: String
}

struct Lesson35: View {
    let items: [Item] = [
        .init(image: "drop.fill", name: "drop"),
        .init(image: "flame.fill", name: "flame"),
        .init(image: "bolt.fill", name: "bolt"),
        .init(image: "leaf.fill", name: "leaf"),
        .init(image: "hare.fill", name: "hare"),
        .init(image: "tortoise.fill", name: "tortoise")
    ]

    // 横幅の設定
    let colums: [GridItem] = [.init(.adaptive(minimum: 100, maximum: 150))]

    var body: some View {
        ScrollView {
            // Spacing → 行間のサイズ
            LazyVGrid(columns: colums, spacing: 50) {
                ForEach(items) { item in
                    VStack {
                        Image(systemName: item.image)
                        Text(item.name)
                    }
                    .background(Color.blue)
                }
            }
            .padding()
        }
    }
}

struct Lesson35_Previews: PreviewProvider {
    static var previews: some View {
        Lesson35()
    }
}
