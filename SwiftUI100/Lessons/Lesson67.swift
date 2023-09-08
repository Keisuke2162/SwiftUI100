//
//  Lesson67.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/05.
//

import SwiftUI

struct Lesson67: View {
    @State private var listItem: [String] = ["One", "Two", "Three",  "Four",  "Five"]

    var body: some View {
        NavigationView {
            List {
                ForEach(listItem, id: \.self) { item in
                    HStack {
                        Text(item)
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        print(item)
                    }
                }
            }
        }
    }
}

struct Lesson67_Previews: PreviewProvider {
    static var previews: some View {
        Lesson67()
    }
}
