//
//  Lesson49.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/23.
//

import SwiftUI

struct Lesson49: View {
    var body: some View {
        Image("kuma")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .overlay {
                Text("Kuma")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .background(Color.blue.opacity(0.6))
            }
    }
}

struct Lesson49_Previews: PreviewProvider {
    static var previews: some View {
        Lesson49()
    }
}
