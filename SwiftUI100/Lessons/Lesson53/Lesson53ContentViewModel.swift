//
//  Lesson53ContentViewModel.swift
//  SwiftUI100
//
//  Created by Kei on 2023/08/25.
//

import Foundation
import AVFoundation

class Lesson53ContentViewModel: NSObject, ObservableObject, AVAudioPlayerDelegate {
    var player: AVAudioPlayer?
    
    func playAudio() {
        guard let url = Bundle.main.url(forResource: "bgm", withExtension: "mp3") else {
            return
        }
        player = try! AVAudioPlayer(contentsOf: url)
        player?.delegate = self
        player?.play()
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        // 
    }
}
