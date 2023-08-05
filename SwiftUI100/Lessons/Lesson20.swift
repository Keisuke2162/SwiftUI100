//
//  Lesson20.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

// MEMO: NavigationStackとNavigationSplitViewを使うべきではある

struct Lesson20: View {
    @State private var isNavigation = false

    var body: some View {
        NavigationStack {
            Button {
                self.isNavigation = true
            } label: {
                VStack {
                    Image("kuma")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("画面遷移")
                }
            }
            .navigationDestination(isPresented: $isNavigation) {
                Text("画面遷移OK！")
            }
        }
    }
}

struct Lesson20_Previews: PreviewProvider {
    static var previews: some View {
        Lesson20()
    }
}
