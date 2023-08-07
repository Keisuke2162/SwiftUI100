//
//  Lesson24CardViewModifier.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/08.
//

import SwiftUI

struct Lesson24CardViewModifier: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat

    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: shadowColor, radius: shadowRadius, x: 4, y: 4)
            .padding(shadowRadius + 8)
    }
}

extension View {
    func card(color: Color = Color.gray.opacity(0.4),
              radius: CGFloat = 8) -> some View {
        self.modifier(Lesson24CardViewModifier(shadowColor: color, shadowRadius: radius))
        
    }
}

struct Lesson24CardViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("TEST")
            .card()
            .previewLayout(.sizeThatFits)
    }
}
