//
//  Lesson11.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

struct Lesson11: View {
    private let listItem: [String] = ["One", "Two", "Three",  "Four",  "Five"]
    var body: some View {
        NavigationView {
            List(listItem, id: \.self) { item in
                NavigationLink {
                    Text(item)
                } label: {
                    Text(item)
                }

            }
        }
    }
}

struct Lesson11_Previews: PreviewProvider {
    static var previews: some View {
        Lesson11()
    }
}
