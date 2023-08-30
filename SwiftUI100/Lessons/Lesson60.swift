//
//  Lesson60.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/29.
//

import SwiftUI

// MEMO: ブログの回答はQGridだったけどLazyVGridで作る

struct Lesson60Item: Identifiable {
    var id = UUID()
    let image: String
    let name: String
}

struct Lesson60: View {
    let items: [Lesson60Item] = [
        .init(image: "kuma", name: "A"),
        .init(image: "kuma", name: "B"),
        .init(image: "kuma", name: "C"),
    ]
    let gridItems: [GridItem] = [.init(.fixed(200)), .init(.fixed(200))]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems) {
                ForEach(items) { item in
                    Image(item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 150)
                }
            }
        }
    }
}

struct Lesson60_Previews: PreviewProvider {
    static var previews: some View {
        Lesson60()
    }
}
