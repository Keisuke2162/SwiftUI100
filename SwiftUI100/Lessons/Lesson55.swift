//
//  Lesson55.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/26.
//

import SwiftUI

struct Lesson55: View {
    @State private var type: ViewType?

    var body: some View {
        VStack(spacing: 16) {
            Button {
                type = .aView
            } label: {
                Text("A")
            }

            Button {
                type = .bView
            } label: {
                Text("B")
            }

            Button {
                type = .cView
            } label: {
                Text("C")
            }
        }
        .sheet(item: $type) { viewType in
            switch viewType {
            case .aView:
                SheetView(text: "A")
            case .bView:
                SheetView(text: "B")
            case .cView:
                SheetView(text: "C")
            }
        }
    }
}

enum ViewType: Identifiable {
    case aView
    case bView
    case cView

    var id: Int {
        hashValue
    }
}

struct SheetView: View {
    let text: String
    var body: some View {
        Text(text)
    }
}

struct Lesson55_Previews: PreviewProvider {
    static var previews: some View {
        Lesson55()
    }
}
