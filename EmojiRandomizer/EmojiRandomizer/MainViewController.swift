//
//  MainViewController.swift
//  EmojiRandomizer
//
//  Created by Vadim  on 28.11.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    // Mark: - IBOutlets
    
    @IBOutlet weak private var changeEmojiButton: UIButton!
    @IBOutlet weak private var emojiLabel: UILabel!
    @IBOutlet weak var textChangeCounterLabel: UILabel!
    
    // Mark: - Properties
    
    private var counterOfPressButton = 0
    private let emojies = "🦧🦓🏀🎲🚖📱🎄🦜🐿️🌍"
    
    // Mark: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupButtons()
        self.setupLabels()
    }
    
    // Mark - Methods
    
    private func setupButtons() {
        self.changeEmojiButton.layer.cornerRadius = self.changeEmojiButton.frame.height / 2
    }
    
    private func setupLabels() {
        self.emojiLabel.text = nil
        self.emojiLabel.backgroundColor = UIColor.clear
        self.textChangeCounterLabel.backgroundColor = nil
    }
    
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

