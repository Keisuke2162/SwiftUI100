//
//  Lesson28Entity.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/19.
//

import SwiftUI

struct Lesson28Entity: Identifiable {
    var id: Int
    var title: String
    var view: ViewEnum
}

enum ViewEnum {
    case viewA
    case viewB
    case ViewC
    case ViewD
}
