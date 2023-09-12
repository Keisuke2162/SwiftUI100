//
//  Lesson68.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/10.
//

import SwiftUI

struct Lesson68: View {
    var body: some View {
        List {
            ForEach(0..<10, id: \.self) { index in
                HStack(alignment: .center) {
                    Text("Cell")
                    Spacer()
                    Button(action: {
                        // ボタン1のアクションをここに追加
                        print("Button 1 tapped in row \(index)")
                    }) {
                        Text("Button 1")
                    }
                    .buttonStyle(PlainButtonStyle())
                    Button(action: {
                        // ボタン2のアクションをここに追加
                        print("Button 2 tapped in row \(index)")
                    }) {
                        Text("Button 2")
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .contentShape(Rectangle())
            }
        }
    }
}

struct Lesson68_Previews: PreviewProvider {
    static var previews: some View {
        Lesson68()
    }
}
