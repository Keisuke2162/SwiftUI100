//
//  Lesson71.swift
//  SwiftUI100
//
//  Created by Kei on 2023/09/13.
//

import SwiftUI
import UIKit

struct ActivityViewController: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIActivityViewController

    var items: [Any]
    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let viewController = UIActivityViewController(activityItems: items, applicationActivities: applicationActivities)
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
    }
}

struct Lesson71: View {
    @State private var isShowActivity: Bool = false

    var body: some View {
        Button {
            isShowActivity = true
        } label: {
            Text("Show Activity")
        }
        .sheet(isPresented: $isShowActivity) {
            ActivityViewController(items: [URL(string: "https://twitter.com/home")!])
        }
    }
}

struct Lesson71_Previews: PreviewProvider {
    static var previews: some View {
        Lesson71()
    }
}
