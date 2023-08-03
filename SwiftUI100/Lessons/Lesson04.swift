//
//  Lesson04.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/04.
//

import SwiftUI

struct Lesson04: View {
    var body: some View {
        Image("kuma")
            .resizable()
            .scaledToFill()
            .background(Color.blue)
            .frame(width: 200, height: 200)
            .cornerRadius(100)
            .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 5))
    }
}

struct Lesson04_Previews: PreviewProvider {
    static var previews: some View {
        Lesson04()
    }
}
