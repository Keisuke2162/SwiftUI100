//
//  Lesson66.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/05.
//

import SwiftUI

// MEMO: なぜか並べ替えができない

struct Lesson66Item: Identifiable {
    var id: Int
    let name: String
}

struct Lesson66: View {
    @State private var listItem: [Lesson66Item] = [
        .init(id: 0, name: "A"),
        .init(id: 1, name: "B"),
        .init(id: 2, name: "C"),
        .init(id: 3, name: "D")
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(listItem) { item in
                    Text(item.name)
                }
                .onMove(perform: moveRow)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func moveRow(from source: IndexSet, to destination: Int) {
        listItem.move(fromOffsets: source, toOffset: destination)
    }
}

struct Lesson66_Previews: PreviewProvider {
    static var previews: some View {
        Lesson66()
    }
}
