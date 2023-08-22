//
//  Lesson40.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI

// MEMO: 何か他のと内容被ってる気がする

struct Lesson40: View {
    @State private var isShowSheet = false

    var body: some View {
        Button {
            isShowSheet = true
        } label: {
            Text("1")
        }
        .fullScreenCover(isPresented: $isShowSheet, content: {
            Text("2")
        })
    }
}

struct Lesson40_Previews: PreviewProvider {
    static var previews: some View {
        Lesson40()
    }
}
