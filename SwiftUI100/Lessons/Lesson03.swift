//
//  Lesson03.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/04.
//

import SwiftUI

struct Lesson03: View {
    var body: some View {
        Image("kuma")
            .resizable()
            .scaledToFill()
            .background(Color.blue)
            .frame(width: 200, height: 200)
            .cornerRadius(100)
    }
}

struct Lesson03_Previews: PreviewProvider {
    static var previews: some View {
        Lesson03()
    }
}
