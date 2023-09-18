//
//  Lesson73.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/13.
//

import SwiftUI

struct Lesson73: View {
    @State private var isLoading: Bool = false

    var body: some View {
        VStack(spacing: 32) {
            if isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
                    .padding()
                    .background(Color.black.opacity(0.2))
                    .cornerRadius(8)
                    .frame(width: 100, height: 100)
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

struct Lesson73_Previews: PreviewProvider {
    static var previews: some View {
        Lesson73()
    }
}
