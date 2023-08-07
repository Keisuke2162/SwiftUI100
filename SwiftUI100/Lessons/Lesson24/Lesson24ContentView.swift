//
//  Lesson24ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/08.
//

import SwiftUI

struct Lesson24ContentView: View {
    var body: some View {
        VStack {
            Text("AAA")
                .card()
            Text("BBB")
        }
        .card()
    }
}

struct Lesson24ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson24ContentView()
    }
}
