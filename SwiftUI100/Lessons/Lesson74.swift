//
//  Lesson74.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/13.
//

import SwiftUI

struct Lesson74: View {
    @State private var isMove: Bool = false
    @State private var name: String = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                Button {
                    isMove = true
                    name = "AAA"
                } label: {
                    Text("111")
                }

                Button {
                    isMove = true
                    name = "BBB"
                } label: {
                    Text("222")
                }
                
                Button {
                    isMove = true
                    name = "CCC"
                } label: {
                    Text("333")
                }
            }
            .navigationDestination(isPresented: $isMove) {
                Text(name)
            }
        }
    }
}

struct Lesson74_Previews: PreviewProvider {
    static var previews: some View {
        Lesson74()
    }
}
