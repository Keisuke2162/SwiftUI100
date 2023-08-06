//
//  Lesson08.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

struct Lesson08: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Red")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Blue")
                }
            Color.green
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Green")
                }
        }
    }
}

struct Lesson08_Previews: PreviewProvider {
    static var previews: some View {
        Lesson08()
    }
}
