//
//  Lesson69.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/10.
//

import SwiftUI

struct Lesson69: View {
    private let items: [String] = ["Tokyo", "Osaka", "Kyoto", "Hiroshima", "Fukuoka"]
    @State private var text: String = ""
    private var displayItems: [String] {
        if text.isEmpty {
            return []
        } else {
            return items.filter { $0.uppercased().contains(text.uppercased()) }
        }
    }

    var body: some View {
        ScrollView{
            LazyVStack {
                TextField("Input", text: $text)
                    .padding(8)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300)
                ForEach(displayItems, id: \.self) { item in
                    VStack(alignment: .leading) {
                        Text(item)
                            .padding(.leading, 8)
                        Divider()
                    }
                    .frame(width: 300)
                }
            }
        }
    }
}

struct Lesson69_Previews: PreviewProvider {
    static var previews: some View {
        Lesson69()
    }
}
