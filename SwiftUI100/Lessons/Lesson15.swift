//
//  Lesson15.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

// MEMO: Buttonのroleを.destructiveにするとButtonが2つ表示される謎

struct Lesson15: View {
    @State private var isShowAlert = false

    var body: some View {
        Button {
            self.isShowAlert = true
        } label: {
            Image("kuma")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        }.alert("アラート", isPresented: $isShowAlert) {
            Button("OK") {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Message")
        }
    }
}

struct Lesson15_Previews: PreviewProvider {
    static var previews: some View {
        Lesson15()
    }
}
