//
//  Lesson52MainView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/24.
//

import SwiftUI

struct Lesson52MainView: View {
    @State private var todoList: [String] = ["AA", "BB"]

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(todoList, id: \.self) { todo in
                        Text(todo)
                    }
                    .onDelete(perform: deleteTodo(_:))
                }
                
                NavigationLink {
                    Lesson52InputView(delegate: self)
                } label: {
                    Text("Add")
                }
            }
        }
    }
}

private extension Lesson52MainView {
    func deleteTodo(_ offsets: IndexSet) {
        todoList.remove(atOffsets: offsets)
    }
}

extension Lesson52MainView: Lesson52InputViewDelegate {
    func addTodo(title: String) {
        todoList.append(title)
    }
}

struct Lesson52MainView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson52MainView()
    }
}
