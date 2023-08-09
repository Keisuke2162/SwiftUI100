//
//  Lesson23ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/08.
//

import SwiftUI

struct Lesson23ContentView: View {
    var body: some View {
        VStack() {
            Lesson23CardView {
                Text("AAA")
                Text("BBB")
            }
            Lesson23CardView(shadowColor: .blue.opacity(0.4)) {
                Text("AAA")
                Text("BBB")
            }
            Lesson23CardView(shadowColor: .blue.opacity(0.4), shadowRadius: 32.0) {
                Text("AAA")
                Text("BBB")
            }
        }
    }
}

struct Lesson23ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson23ContentView()
    }
}
