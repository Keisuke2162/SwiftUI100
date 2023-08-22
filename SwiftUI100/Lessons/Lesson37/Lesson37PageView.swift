//
//  Lesson37PageView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI

struct Lesson37PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0

    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }

    var body: some View {
        ZStack(alignment: .bottom) {
            Lesson37PageViewController(controllers: viewControllers, currentPage: $currentPage)
            Lesson37PageControl(numberOfPage: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
                .padding(.bottom, 20)
        }
    }
}

struct Lesson37PageView_Previews: PreviewProvider {
    static var previews: some View {
        var views = [Text("1"),Text("2"),Text("3"),Text("4")]
        Lesson37PageView(views)
    }
}
