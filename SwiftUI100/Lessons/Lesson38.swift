//
//  Lesson38.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI

struct Lesson38: View {
    @State private var isShowSheet = false

    var body: some View {
        Button {
            isShowSheet = true
        } label: {
            Text("Move")
        }
        .sheet(isPresented: $isShowSheet) {
            Text("NextView")
                .interactiveDismissDisabled()
        }
    }
}

struct Lesson38_Previews: PreviewProvider {
    static var previews: some View {
        Lesson38()
    }
}
