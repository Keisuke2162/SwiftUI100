//
//  Lesson14.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

// MEMO: iOS14以前で表示するやり方

struct Lesson14: View {
    @State private var isShowAlert = false

    var body: some View {
        Button {
            self.isShowAlert = true
        } label: {
            Image("kuma")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        }.alert(isPresented: $isShowAlert) {
            Alert(title: Text("アラート"),
                  message: Text("Message"),
                  primaryButton: .default(Text("A")),
                  secondaryButton: .default(Text("B")))
        }
    }
}

struct Lesson14_Previews: PreviewProvider {
    static var previews: some View {
        Lesson14()
    }
}
