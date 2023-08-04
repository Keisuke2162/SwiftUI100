//
//  Lesson01.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/04.
//

import SwiftUI

struct Lesson01: View {
    var body: some View {
        Image("kuma")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 200)
            .background(Color.red)
    }
}

struct Lesson01_Previews: PreviewProvider {
    static var previews: some View {
        Lesson01()
    }
}
