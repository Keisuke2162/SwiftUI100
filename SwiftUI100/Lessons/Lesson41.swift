//
//  Lesson41.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/20.
//

import SwiftUI

// MEMO: このやり方はiOS15+

struct Lesson41: View {
    var body: some View {
        let url = "https://qiita.com/takehilo/items/3e4dd9a87902fe7020cb"
        Text(.init("こちらの[リンク](\(url))です"))
    }
}

struct Lesson41_Previews: PreviewProvider {
    static var previews: some View {
        Lesson41()
    }
}
