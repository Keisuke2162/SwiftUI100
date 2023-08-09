//
//  Lesson27ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/10.
//

import SwiftUI

struct Lesson27ContentView: View {
    @State private var text = "AAA"
    var body: some View {
        NavigationView {
            VStack {
                Text(text)
                NavigationLink {
                    Lesson27SecondView(delegate: self)
                } label: {
                    Text("Move")
                }
            }
        }
    }
}

extension Lesson27ContentView: Lesson27SecondViewPrortocol {
    func didTapDoneButton() {
        text = "BBB"
    }
}

struct Lesson27ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson27ContentView()
    }
}
