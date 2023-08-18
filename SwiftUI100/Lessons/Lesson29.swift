//
//  Lesson29.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/19.
//

import SwiftUI

struct Lesson29: View {
    @State private var selectNumberA: Int = 0
    @State private var selectNumberB: Int = 0

    var body: some View {
        HStack {
            Picker(selection: $selectNumberA) {
                ForEach(0 ..< 10) {
                    Text("\($0)")
                }
            } label: {
                EmptyView()
            }.pickerStyle(.inline)
            Picker(selection: $selectNumberB) {
                ForEach(0 ..< 50) {
                    Text("\($0)")
                }
            } label: {
                EmptyView()
            }.pickerStyle(.inline)
        }
    }
}

struct Lesson29_Previews: PreviewProvider {
    static var previews: some View {
        Lesson29()
    }
}
