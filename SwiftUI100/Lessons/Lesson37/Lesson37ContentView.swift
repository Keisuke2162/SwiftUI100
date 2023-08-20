//
//  Lesson37ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI

struct Lesson37ContentView: View {
    var views = [Text("A"),Text("B"),Text("C"),Text("D")]

    var body: some View {
        Lesson37PageView(views)
    }
}

struct Lesson37ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson37ContentView()
    }
}
