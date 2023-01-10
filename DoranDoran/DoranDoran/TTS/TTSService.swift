//
//  TTSService.swift
//  DoranDoran
//
//  Created by 효우 on 2023/01/07.
//

import UIKit
import AVFoundation

class TTSService: NSObject {
    
    // MARK: - Properties

    static let shared = TTSService()
    private let synthesizer = AVSpeechSynthesizer()
    
    func speakToText(text: String) {
        let uterrance = AVSpeechUtterance(string: text)
        uterrance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
        uterrance.pitchMultiplier = 0.8
        synthesizer.stopSpeaking(at: .immediate)
        synthesizer.speak(uterrance)
        try? AVAudioSession.sharedInstance().setCategory(.playback, options: .duckOthers)
    }
    
    func stop() {
        synthesizer.stopSpeaking(at: .word)
    }
    
}
