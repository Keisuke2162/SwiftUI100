//
//  Lesson30.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/19.
//

import SwiftUI

struct Lesson30: View {
    @State private var isShowSheet = false

    var body: some View {
        Button {
            isShowSheet = true
        } label: {
            Text("Move")
        }
        .sheet(isPresented: $isShowSheet) {
            Text("NextView")
        }
    }
}

struct Lesson30_Previews: PreviewProvider {
    static var previews: some View {
        Lesson30()
    }
}
