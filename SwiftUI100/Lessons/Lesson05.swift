//
//  Lesson05.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/04.
//

import SwiftUI

struct Lesson05: View {
    var body: some View {
        HStack {
            Image("kuma")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            Spacer()
            Image("kuma")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            Spacer()
            Image("kuma")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            Spacer()
            Image("kuma")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
            Spacer()
            Image("kuma")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
        }
        .padding(8)
    }
}

struct Lesson05_Previews: PreviewProvider {
    static var previews: some View {
        Lesson05()
    }
}
