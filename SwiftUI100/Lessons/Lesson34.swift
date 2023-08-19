//
//  Lesson34.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/19.
//

import SwiftUI

// MEMO: 検証してない！

struct Lesson34: View {
    @State private var text = "A"

    var body: some View {
        Text(text)
            .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification)) { _ in
                text = "Shaked"
            }
    }
}

extension NSNotification.Name {
    public static let deviceDidShakeNotification = NSNotification.Name("Shake")
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
    }
}

struct Lesson34_Previews: PreviewProvider {
    static var previews: some View {
        Lesson34()
    }
}
