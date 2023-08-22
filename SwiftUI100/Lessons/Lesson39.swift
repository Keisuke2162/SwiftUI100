//
//  Lesson39.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI

struct Lesson39: View {
    @State private var isShowSheet = false

    var body: some View {
        Button {
            isShowSheet = true
        } label: {
            Text("Move")
        }
        .sheet(isPresented: $isShowSheet) {
            Lesson39ModelView()
        }
    }
}

struct Lesson39ModelView: View {
    @State private var isShowSheet = false

    var body: some View {
        Button {
            isShowSheet = true
        } label: {
            Text("SecondView")
        }
        .fullScreenCover(isPresented: $isShowSheet, content: {
            Text("ThirdView")
        })
    }
}

struct Lesson39_Previews: PreviewProvider {
    static var previews: some View {
        Lesson39()
    }
}
