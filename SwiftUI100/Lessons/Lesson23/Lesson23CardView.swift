//
//  Lesson23CardView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/08.
//

import SwiftUI

struct Lesson23CardView<Content>: View where Content: View {
    let shadowColor: Color
    let shadowRadius: CGFloat
    let content: () -> Content

    init(shadowColor: Color = Color.gray.opacity(0.4),
         shadowRadius: CGFloat = 8,
         @ViewBuilder content: @escaping () -> Content) {
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.content = content
    }

    var body: some View {
        content()
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: shadowColor, radius: shadowRadius, x: 4, y: 4)
            .padding(shadowRadius + 8)
    }
}

struct Lesson23CardView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson23CardView {
            Text("HELLO")
        }
        .previewLayout(.sizeThatFits)
    }
}
