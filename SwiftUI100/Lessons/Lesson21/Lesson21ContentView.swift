//
//  Lesson21ContentView.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/07.
//

import SwiftUI

// MEMO: なんかもっといい感じの実装ありそう↓
// https://qiita.com/SNQ-2001/items/215dfbc457e0e5b0bc1e

struct Lesson21ContentView: View {
    private let textA = "Everton transfer news LIVE - Harry Maguire interest, Youssef Chermiti deal, Trevoh Chalobah linked"
    private let textB = "Sean Dyche shares Dominic Calvert-Lewin fitness doubt for Everton opener against Fulham"
    private let textC = """
        Dominic Calvert-Lewin showcased his immense value to Everton but Sean Dyche ended
        pre-season with another injury headache after James Tarkowski hobbled off the pitch
        against Sporting. The Blues centre-back and vice captain was clearly in pain as a
        club physio worked on his left knee and, while he was able to walk off unaided, he
        limped straight down the tunnel towards the end of the second half. There was clear
        concern in the Everton dugout as, just like with Dwight McNeil seven days earlier,
        thoughts immediately turned to assessing a knock suffered by a key player.
        """

    var body: some View {
        ScrollView {
            VStack {
                Lesson21ShowMoreView(text: textA)
                Lesson21ShowMoreView(text: textB)
                Lesson21ShowMoreView(text: textC)
            }
        }
    }
}

struct Lesson21ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lesson21ContentView()
    }
}
