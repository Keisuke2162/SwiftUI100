//
//  Lesson28ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/19.
//

import SwiftUI

struct Lesson28ContentView: View {
    let viewList: [Lesson28Entity] = [
        .init(id: 0, title: "ViewA", view: .viewA),
        .init(id: 1, title: "ViewB", view: .viewB),
        .init(id: 2, title: "ViewC", view: .ViewC),
        .init(id: 3, title: "ViewD", view: .ViewD)
    ]

    var body: some View {
        NavigationView {
            VStack {
                Divider()
                List(viewList) { view in
                    makeView(entity: view)
                }
            }
        }
    }
    
    func makeView(entity: Lesson28Entity) -> AnyView {
        switch entity.view {
        case .viewA:
            return AnyView(NavigationLink(destination: {
                Lesson01()
            }, label: {
                Text(entity.title)
            }))
        case .viewB:
            return AnyView(NavigationLink(destination: {
                Lesson02()
            }, label: {
                Text(entity.title)
            }))
        case .ViewC:
            return AnyView(NavigationLink(destination: {
                Lesson03()
            }, label: {
                Text(entity.title)
            }))
        case .ViewD:
            return AnyView(NavigationLink(destination: {
                Lesson04()
            }, label: {
                Text(entity.title)
            }))
        }
    }
}

struct Lesson28ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson28ContentView()
    }
}
