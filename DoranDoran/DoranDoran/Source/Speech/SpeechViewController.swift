//
//  SpeechViewController.swift
//  DoranDoran
//
//  Created by 효우 on 2022/12/28.
//

import UIKit

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
    }

}
