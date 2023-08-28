//
//  Lesson57ResultView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/26.
//

import SwiftUI

struct Lesson57ResultView: View {
    @Binding var bmi: Double

    var body: some View {
        Text("BMI is \(bmi)")
    }
}
