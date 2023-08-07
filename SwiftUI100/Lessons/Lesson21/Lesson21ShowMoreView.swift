//
//  Lesson21ShowMoreView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/07.
//

import SwiftUI

struct Lesson21ShowMoreView: View {
    @State var text: String
    @State private var isFirst = true
    @State private var isFold = false
    @State private var isShowFoldButton = true
    @State private var textHeight: CGFloat? = nil

    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Text(text)
                    .frame(height: textHeight)
                    .background(GeometryReader { geometry in
                        Color.red.preference(key: SizePreference.self, value: geometry.size)
                    })
                    .padding()
                    .onPreferenceChange(SizePreference.self) { textSize in
                        if self.isFirst {
                            if textSize.height > 80 {
                                self.textHeight = 80
                                self.isFold = true
                                self.isFirst = false
                            } else {
                                self.isShowFoldButton = false
                            }
                        }
                    }
                Spacer()
            }

            if isShowFoldButton {
                Button {
                    self.isFold.toggle()
                    if self.isFold {
                        self.textHeight = 80
                    } else {
                        self.textHeight = nil
                    }
                } label: {
                    Text(isFold ? "Read More" : "Fold")
                }.padding(.trailing, 8)

            }
        }
    }
}

fileprivate struct SizePreference: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}

struct Lesson21ShowMoreView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson21ShowMoreView(text: "BBB")
    }
}
