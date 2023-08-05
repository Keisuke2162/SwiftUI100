//
//  Lesson16.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

struct Lesson16: View {
    @State private var isShowAlertA = false
    @State private var isShowAlertB = false

    var body: some View {
        HStack {
            Spacer()
            Button {
                self.isShowAlertA = true
            } label: {
                VStack {
                    Image("kuma")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("Alert1")
                }
            }.alert("アラートA", isPresented: $isShowAlertA) {
                Button("OK") {}
            } message: {
                Text("Message")
            }
            Spacer()
            Button {
                self.isShowAlertB = true
            } label: {
                VStack {
                    Image("kuma")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("Alert2")
                }
            }.alert("アラートB", isPresented: $isShowAlertB) {
                Button("OK") {}
            } message: {
                Text("Message")
            }
            Spacer()
        }
    }
}

struct Lesson16_Previews: PreviewProvider {
    static var previews: some View {
        Lesson16()
    }
}
