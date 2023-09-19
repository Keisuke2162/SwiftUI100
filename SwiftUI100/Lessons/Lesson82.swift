//
//  Lesson82.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/20.
//

import SwiftUI

struct Lesson82: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        Image("kuma")
            .resizable()
            .scaledToFit()
            .scaleEffect(scale)
            .gesture(
                MagnificationGesture()
                    .onChanged({ value in
                        scale = value.magnitude
                    })
            )
    }
}

struct Lesson82_Previews: PreviewProvider {
    static var previews: some View {
        Lesson82()
    }
}
