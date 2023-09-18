//
//  Lesson78.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/14.
//

import SwiftUI

struct Lesson78: View {
    @State private var sliderValue: Double = 0
    @State private var contentHeight: CGFloat = 0
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(0 ..< 20) { index in
                        Text("Item \(index + 1)")
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                }
                .background(GeometryReader { geometry in
                    Color.clear
                        .onAppear {
                            contentHeight = geometry.size.height
                        }
                })
                .offset(y: CGFloat(-(contentHeight * sliderValue)))
            }
            Slider(value: $sliderValue, in: 0 ... 1)
                .padding(.horizontal)
        }
    }
}

struct Lesson78_Previews: PreviewProvider {
    static var previews: some View {
        Lesson78()
    }
}
