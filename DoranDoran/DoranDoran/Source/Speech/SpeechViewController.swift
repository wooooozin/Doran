//
//  SpeechViewController.swift
//  DoranDoran
//
//  Created by 효우 on 2022/12/28.
//

import UIKit
import AVFoundation

class SpeechViewController: UIViewController {
    
    // MARK: - Properties
    private let speechView = SpeechView()

    
    // MARK: - Lifecycle
    
    override func loadView() {
        self.view = speechView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.navigationItem.title = "텍스트를 입력하세요"
        
        speechView.playButton.addTarget(self, action: #selector(didTapPlaySynth), for: .touchUpInside)
        let allVoices =  AVSpeechSynthesisVoice.speechVoices()

        var index = 0
        for theVoice in allVoices {
            print("Voice[\(index)] = \(theVoice)\n")
            index += 1
        }
    }
}

// MARK: - Method, objc Method


extension SpeechViewController {
    @objc func didTapPlaySynth() {
        TTSService.shared.speakToText(text: speechView.textView.text)
    }
}

extension SpeechViewController: AVSpeechSynthesizerDelegate {
    
}
