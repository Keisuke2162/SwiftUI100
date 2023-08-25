//
//  Lesson57InputView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/26.
//

import SwiftUI

/// bmiは@Stateと@Bindingいらなくね？と思ったけどどうやら必要らしい

struct Lesson57InputView: View {
    @State private var heightText: String = ""
    @State private var weightText: String = ""
    @State private var isShowResult: Bool = false
    @State private var bmi: Double = 0

    var body: some View {
        VStack(spacing: 32) {
            HStack {
                Text("Height")
                    .frame(width: 80)
                TextField("", text: $heightText)
                    .textFieldStyle(.roundedBorder)
            }
            
            HStack {
                Text("Weight")
                    .frame(width: 80)
                TextField("", text: $weightText)
                    .textFieldStyle(.roundedBorder)
            }
            
            Button {
                guard let height = Double(self.heightText),
                      let weight = Double(self.weightText) else {
                    return
                }
                bmi = weight / ((height / 100) * (height / 100))
                isShowResult = true
            } label: {
                Text("Check BMI")
            }
        }
        .sheet(isPresented: $isShowResult) {
            Lesson57ResultView(bmi: $bmi)
        }
    }
}

struct Lesson57InputView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson57InputView()
    }
}
