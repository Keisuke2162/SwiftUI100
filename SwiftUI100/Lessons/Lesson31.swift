//
//  Lesson31.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/19.
//

import SwiftUI

struct Lesson31: View {
    @State private var isShowSheet = false

    var body: some View {
        Button {
            isShowSheet = true
        } label: {
            Text("Move")
        }
        .fullScreenCover(isPresented: $isShowSheet, content: {
            Lesson31SecondView()
        })
    }
}

struct Lesson31SecondView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("Return")
        }
        .background(Color.red)
    }
}

struct Lesson31_Previews: PreviewProvider {
    static var previews: some View {
        Lesson31()
    }
}
