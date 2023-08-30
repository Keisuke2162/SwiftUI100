//
//  Lesson62.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/31.
//

import SwiftUI

struct Lesson62: View {
    @State private var isButtonEnable: Bool = false

    var body: some View {
        VStack {
            Button {
                // Tapped
            } label: {
                Text("\(isButtonEnable ? "Enable": "Disable") Button")
            }
            .disabled(!isButtonEnable)

            Toggle(isOn: $isButtonEnable) {
                Text("\(isButtonEnable.description)")
            }
        }
    }
}

struct Lesson62_Previews: PreviewProvider {
    static var previews: some View {
        Lesson62()
    }
}
