//
//  Lesson64.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/05.
//

import SwiftUI

// MEMO: そのうちpopToRootメソッド実装されそう
// FIXME: NavigationLink使えないのでisDetailLink使えない、実装めんどくさそう
// 配列でpath作ってNavigationStackならできそうだけどうーん、、

struct Lesson64: View {
    @State private var isNavigation: Bool = false

    var body: some View {
        NavigationStack {
            Button {
                self.isNavigation = true
            } label: {
                Text("View Bへ遷移")
            }
            .navigationTitle("View A")
            .navigationDestination(isPresented: $isNavigation) {
                Lesson64BView(isRootActive: $isNavigation)
            }
        }
    }
}

struct Lesson64BView: View {
    @Binding var isRootActive: Bool
    @State private var isNavigation: Bool = false
    
    var body: some View {
        NavigationStack {
            Button {
                self.isNavigation = true
            } label: {
                Text("View Cへ遷移")
            }
            .navigationTitle("View B")
            .navigationDestination(isPresented: $isNavigation) {
                Lesson64CView(isRootActive: $isRootActive)
            }
        }
    }
}

struct Lesson64CView: View {
    @Binding var isRootActive: Bool
    
    var body: some View {
        NavigationStack {
            Button {
                self.isRootActive = false
            } label: {
                Text("RootViewへ戻る")
            }
            .navigationTitle("View C")
        }
    }
}


struct Lesson64_Previews: PreviewProvider {
    static var previews: some View {
        Lesson64()
    }
}
