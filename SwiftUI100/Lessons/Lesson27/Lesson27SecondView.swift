//
//  Lesson27SecondView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/10.
//

import SwiftUI

protocol Lesson27SecondViewPrortocol {
    func didTapDoneButton()
}

struct Lesson27SecondView: View {
    var delegate: Lesson27SecondViewPrortocol?

    var body: some View {
        Button {
            delegate?.didTapDoneButton()
        } label: {
            Text("Protocol Button")
        }
    }
}

struct Lesson27SecondView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson27SecondView()
    }
}
