//
//  Lesson13.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

struct Lesson13: View {
    var body: some View {
        List {
            Section {
                Text("1-1")
                Text("1-2")
                Text("1-3")
                Text("1-4")
                Text("1-5")
            } header: {
                Text("No.1")
            }
            Section {
                Text("2-1")
                Text("2-2")
                Text("2-3")
                Text("2-4")
                Text("2-5")
            } header: {
                Text("No.2")
            }
            Section {
                Text("3-1")
                Text("3-2")
                Text("3-3")
                Text("3-4")
                Text("3-5")
            } header: {
                Text("No.3")
            }
        }
        .listStyle(.sidebar)
    }
}

struct Lesson13_Previews: PreviewProvider {
    static var previews: some View {
        Lesson13()
    }
}
