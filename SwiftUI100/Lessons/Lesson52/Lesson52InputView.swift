//
//  Lesson52InputView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/24.
//

import SwiftUI

protocol Lesson52InputViewDelegate {
    func addTodo(title: String)
}

struct Lesson52InputView: View {
    @Environment(\.dismiss) var dismiss
    @State private var todoText: String = ""
    var delegate: Lesson52InputViewDelegate?
    
    var body: some View {
        VStack(spacing: 16) {
            Spacer()
            Text("TODOを入力")
            TextField("TODO", text: $todoText)
                .textFieldStyle(.roundedBorder)
                .frame(width: 300)
            Button {
                self.delegate?.addTodo(title: todoText)
                dismiss()
            } label: {
                Text("DONE")
            }
            Spacer()
            Button {
                dismiss()
            } label: {
                Text("Back")
            }

        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

struct Lesson52InputView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson52InputView()
    }
    
    
}
