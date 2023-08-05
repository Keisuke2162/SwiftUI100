//
//  Lesson19.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

struct Lesson19: View {
    @State private var text = ""
    @State private var isShowAlert = false
    @State private var isShowSheet = false

    var body: some View {
        VStack {
            TextField("数値を入力", text: $text)
                .padding()
                .textFieldStyle(.roundedBorder)
            Button {
                guard Int(self.text) != nil else {
                    self.isShowAlert = true
                    return
                }
                self.isShowSheet = true
            } label: {
                VStack {
                    Image("kuma")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("Num Check")
                }
            }
        }
        .alert("数値じゃありません", isPresented: $isShowAlert) {
            Button("OK") {
                self.text = ""
            }
        }
        .sheet(isPresented: $isShowSheet) {
            Text(self.text)
        }
    }
}

struct Lesson19_Previews: PreviewProvider {
    static var previews: some View {
        Lesson19()
    }
}
