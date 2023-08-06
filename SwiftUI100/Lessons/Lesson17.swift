//
//  Lesson17.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

struct Lesson17: View {
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
            }.alert(isPresented: $isShowAlertA) {
                Alert(title: Text("アラートA"),
                      message: Text("Message"),
                      primaryButton: .default(Text("A")),
                      secondaryButton: .default(Text("B")))
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
                    Text("Alert1")
                }
            }.alert(isPresented: $isShowAlertB) {
                Alert(title: Text("アラートB"),
                      message: Text("Message"),
                      primaryButton: .default(Text("A")),
                      secondaryButton: .default(Text("B")))
            }
            Spacer()
        }
    }
}

struct Lesson17_Previews: PreviewProvider {
    static var previews: some View {
        Lesson17()
    }
}
