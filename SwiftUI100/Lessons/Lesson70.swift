//
//  Lesson70.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/11.
//

import SwiftUI

struct Lesson70: View {
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
                    .overlay(
                        Button(action: {
                            self.text = ""
                        }, label: {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.secondary)
                                .padding(.trailing, 24)
                        })
                        .opacity(text.isEmpty ? 0 : 1)
                        .animation(.default, value: text), alignment: .trailing
                    )
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

struct Lesson70_Previews: PreviewProvider {
    static var previews: some View {
        Lesson70()
    }
}
