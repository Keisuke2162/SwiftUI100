//
//  Lesson61.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/29.
//

import SwiftUI

struct Lesson61Item: Identifiable {
    var id = UUID()
    let image: String
    let name: String
}

struct Lesson61: View {
    let items: [Lesson61Item] = [
        .init(image: "kuma", name: "A"),
        .init(image: "kuma", name: "B"),
        .init(image: "kuma", name: "C"),
        .init(image: "kuma", name: "D"),
        .init(image: "kuma", name: "E"),
        .init(image: "kuma", name: "F"),
    ]
    let gridItems: [GridItem] = [.init(.fixed(200))]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridItems) {
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

struct Lesson61_Previews: PreviewProvider {
    static var previews: some View {
        Lesson61()
    }
}
