//
//  Lesson58.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/29.
//

import SwiftUI

struct Lesson58: View {
    @State private var isShowPopup: Bool = false

    var body: some View {
        ZStack {
            Button {
                withAnimation {
                    isShowPopup = true
                }
            } label: {
                Text("ShowAlert")
            }

            if isShowPopup {
                Lesson58AlertView(isShowPopup: $isShowPopup)
            }
        }
    }
}

struct Lesson58AlertView: View {
    @Binding var isShowPopup: Bool

    var body: some View {
        ZStack {
            VStack(spacing: 16) {
                Text("WARNING")
                Image("kuma")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 200)
                    .background(Color.red)
                Button {
                    withAnimation {
                        isShowPopup = false
                    }
                } label: {
                    Text("CLOSE")
                }

            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.black.opacity(0.4))
    }
}

struct Lesson58_Previews: PreviewProvider {
    static var previews: some View {
        Lesson58()
    }
}
