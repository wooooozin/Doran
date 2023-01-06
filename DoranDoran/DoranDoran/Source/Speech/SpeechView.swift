//
//  SpeechView.swift
//  DoranDoran
//
//  Created by 효우 on 2023/01/06.
//

import UIKit

class SpeechView: UIView {
    
    // MARK: - Properties
    lazy var textView: UITextView = {
        let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        tv.textAlignment = .center
        tv.tintColor = .black
        tv.clipsToBounds = true
        tv.layer.borderColor = UIColor.black.cgColor
        tv.layer.borderWidth = 1
        tv.layer.cornerRadius = 10
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    lazy var playButton: UIButton = {
        let button = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 65)
        let image = UIImage(systemName: "play.circle.fill", withConfiguration: config)
        button.tintColor = .black
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var resetButton: UIButton = {
        let button = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 65)
        let image = UIImage(systemName: "arrow.triangle.2.circlepath", withConfiguration: config)
        button.tintColor = .black
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.alignment = .fill
        sv.distribution = .fillEqually
        sv.spacing = 10
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()

    
    // MARK: - init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension SpeechView {
    private func setupUI() {
        self.backgroundColor = .white
        
        self.addSubview(textView)
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12),
            textView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            textView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            textView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.6)
        ])
        
        self.addSubview(stackView)
        stackView.addArrangedSubview(resetButton)
        stackView.addArrangedSubview(playButton)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 20),
            stackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.5),
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
}
