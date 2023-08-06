//
//  Lesson18.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/06.
//

import SwiftUI

// MEMO: Lesson09とやってること一緒

struct Lesson18: View {
    @State private var str = "TEST"

    var body: some View {
        VStack {
            Text(str)
            Button {
                if self.str == "TEST" {
                    self.str = "AAA"
                } else {
                    self.str = "TEST"
                }
            } label: {
                Image("kuma")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            }

        }
    }
}

struct Lesson18_Previews: PreviewProvider {
    static var previews: some View {
        Lesson18()
    }
}
