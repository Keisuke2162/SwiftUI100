//
//  Lesson75.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/13.
//

import SwiftUI

struct Lesson75: View {
    @State private var selectedIndex: Int = 0

    var body: some View {
        VStack {
            Spacer()
            Button {
                if selectedIndex < 2 {
                    selectedIndex += 1
                } else {
                    selectedIndex = 0
                }
            } label: {
                Text("Change Tab")
            }
            TabView(selection: $selectedIndex) {
                Text("Teb A")
                    .tabItem {
                        Text("TAB A")
                    }
                    .tag(0)
                
                Text("Teb B")
                    .tabItem {
                        Text("TAB B")
                    }
                    .tag(1)
                
                Text("Teb C")
                    .tabItem {
                        Text("TAB C")
                    }
                    .tag(2)
            }

        }
    }
}

struct Lesson75_Previews: PreviewProvider {
    static var previews: some View {
        Lesson75()
    }
}
