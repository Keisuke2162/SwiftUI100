//
//  Lesson76.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/13.
//

import SwiftUI

struct Lesson76: View {
    private let items: [String] = ["AAA", "BBB", "CCC"]
    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
    }
}

struct Lesson76_Previews: PreviewProvider {
    static var previews: some View {
        Lesson76()
    }
}
