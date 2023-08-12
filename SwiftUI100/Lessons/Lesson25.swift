//
//  Lesson25.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/10.
//

import SwiftUI

struct Lesson25: View {
    @State private var listItem: [String] = ["One", "Two", "Three",  "Four",  "Five"]

    var body: some View {
        NavigationView {
            List {
                ForEach(listItem, id: \.self) { item in
                    NavigationLink {
                        Text(item)
                    } label: {
                        Text(item)
                    }
                }
                .onDelete(perform: delete)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {} label: {
                        Image("kuma")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                }
            }
        }
    }

    func delete(at offsets: IndexSet) {
        listItem.remove(atOffsets: offsets)
    }
}

struct Lesson25_Previews: PreviewProvider {
    static var previews: some View {
        Lesson25()
    }
}
