//
//  Lesson07.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/04.
//

import SwiftUI

struct Lesson07: View {
    var list = ["A", "B", "C", "D"]
    @State private var selectedItem = 0

    var body: some View {
        Picker("TEST", selection: $selectedItem) {
            ForEach(0 ..< list.count) {
                Text(self.list[$0])
            }
        }
        .pickerStyle(WheelPickerStyle())
        .onReceive([self.selectedItem].publisher.first()) { (value) in
            print("テスト \(self.list[value])")
        }
    }
}

struct Lesson07_Previews: PreviewProvider {
    static var previews: some View {
        Lesson07()
    }
}
