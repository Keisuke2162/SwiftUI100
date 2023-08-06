//
//  Lesson12.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

// MEMO: navigationBarBackButtonHidden = trueにするとスワイプでも戻れなくなる

struct Lesson12: View {
    private let listItem: [String] = ["One", "Two", "Three",  "Four",  "Five"]
    var body: some View {
        NavigationView {
            List(listItem, id: \.self) { item in
                NavigationLink {
                    Text(item)
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text(item)
                }
            }
        }
    }
}

struct Lesson12_Previews: PreviewProvider {
    static var previews: some View {
        Lesson12()
    }
}
