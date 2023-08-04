//
//  Lesson06.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/04.
//

import SwiftUI

struct Lesson06: View {
    var body: some View {
        NavigationView {
            Image("kuma")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 200)
                .clipped()
                .navigationTitle("Bear")
        }
    }
}

struct Lesson06_Previews: PreviewProvider {
    static var previews: some View {
        Lesson06()
    }
}
