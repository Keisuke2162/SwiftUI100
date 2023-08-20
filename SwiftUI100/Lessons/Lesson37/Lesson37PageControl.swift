//
//  Lesson37PageControl.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI
import UIKit

/// UIViewRepresentable→SwiftUIでUIKitを使うためのProtocol（今回の場合UIPageControl）

struct Lesson37PageControl: UIViewRepresentable {
    typealias UIViewType = UIPageControl

    var numberOfPage: Int
    @Binding var currentPage: Int

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    // 表示するUIKitのViewno初期状態のインスタンス生成
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPage
        control.addTarget(context.coordinator,
                          action: #selector(Coordinator.updateCurrentPage(sender:)),
                          for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.currentPage = currentPage
    }

    class Coordinator: NSObject {
        var control: Lesson37PageControl
    
        init(_ control: Lesson37PageControl) {
            self.control = control
        }
        
        @objc
        func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
