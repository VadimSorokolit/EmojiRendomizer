//
//  MainViewController.swift
//  EmojiRandomizer
//
//  Created by Vadim  on 28.11.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    // Mark: - IBOutlets
    
    private var counterOfPressButton = 0
    @IBOutlet weak private var changeEmojiButton: UIButton!
    @IBOutlet weak private var emojiLabel: UILabel!
    
    // Mark: - Properties
    
    private let emojies = "🦧🦓🏀🎲🚖📱🎄🦜🐿️🌍"
    
    // Mark: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.changeEmojiButton.layer.cornerRadius = self.changeEmojiButton.frame.height / 2
    }
    
    // Mark - Methods
    
    private func generateNewEmoji() -> String? {
        return self.emojies.randomElement()?.description
    }
    
    
    // Mark: IBActions
    
    @IBAction private func changeEmojiButtonTap(_ sender: UIButton) {
        self.emojiLabel.text = self.generateNewEmoji()
        counterOfPressButton += 1
        print(counterOfPressButton)
    }
    
}

