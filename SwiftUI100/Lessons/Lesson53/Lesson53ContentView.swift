//
//  Lesson53ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/25.
//

import SwiftUI

struct Lesson53ContentView: View {
    @ObservedObject var viewModel = Lesson53ContentViewModel()

    var body: some View {
        VStack {
            Button {
                viewModel.playAudio()
            } label: {
                Text("BGM START")
            }

        }
    }
}

struct Lesson53ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson53ContentView()
    }
}
