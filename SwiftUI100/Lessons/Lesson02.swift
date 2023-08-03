//
//  Lesson02.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/04.
//

import SwiftUI

struct Lesson02: View {
    var body: some View {
        Image("kuma")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 200)
            .clipped()
    }
}

struct Lesson02_Previews: PreviewProvider {
    static var previews: some View {
        Lesson02()
    }
}
