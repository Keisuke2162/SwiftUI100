//
//  Lesson72.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/13.
//

import SwiftUI

struct Lesson72: View {
    @State private var isLoading: Bool = false

    var body: some View {
        VStack(spacing: 32) {
            if isLoading {
                ProgressView("Loading...")
                    .progressViewStyle(.circular)
                    .padding()
            } else {
                Text("Content")
            }
            Button {
                isLoading.toggle()
            } label: {
                Text("Exchange Loading")
            }

        }
    }
}

struct Lesson72_Previews: PreviewProvider {
    static var previews: some View {
        Lesson72()
    }
}
