//
//  Lesson22.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/07.
//

import SwiftUI

struct Lesson22: View {
    private let textA = "Everton "
    private let textB = "transfer news LIVE - Harry Maguire interest,"
    private let textC = "Youssef Chermiti deal,"
    private let textD = "Trevoh Chalobah linked"
    
    var body: some View {
        (Text(textA)
            .foregroundColor(Color.blue)
            .font(Font.system(size: 20).bold())
         + Text(textB)
            .foregroundColor(Color.red)
         + Text(textC)
            .foregroundColor(Color.green)
         + Text(textD)
            .foregroundColor(Color.indigo)
        ).lineSpacing(4)
    }
}

struct Lesson22_Previews: PreviewProvider {
    static var previews: some View {
        Lesson22()
    }
}
