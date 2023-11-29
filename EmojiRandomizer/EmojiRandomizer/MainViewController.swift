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
    @IBOutlet weak private var resetValueOfChangeCounter: UIButton!
    @IBOutlet weak private var emojiLabel: UILabel!
    @IBOutlet weak private var textChangeCounterLabel: UILabel!
    @IBOutlet weak private var valueOfEmojiChangeCounter: UILabel!
    
    // MARK: - Properties
    
    private var emojiChangesCounter = 0
    private let emojies = "🦧🦓🏀🎲🚖📱🎄🦜🐿️🌍"
    
    // Mark: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupButtons()
        self.setupLabels()
    }
    
    // MARK: - Methods
    
    private func setupButtons() {
        self.changeEmojiButton.layer.cornerRadius = self.changeEmojiButton.frame.height / 2
    }
    
    private func setupLabels() {
        self.emojiLabel.text = nil
        self.emojiLabel.backgroundColor = UIColor.clear
        self.textChangeCounterLabel.backgroundColor = nil
        self.valueOfEmojiChangeCounter.backgroundColor = .clear
        self.resetValueOfChangeCounter.backgroundColor = nil
    }
    
    private func generateNewEmoji() {
        let emoji = self.emojies.randomElement()?.description
        self.emojiLabel.text = emoji
    }
    
    // MARK: IBActions
    
    @IBAction private func changeEmojiButtonTap(_ sender: UIButton) {
        self.generateNewEmoji()
        self.emojiChangesCounter += 1
        self.valueOfEmojiChangeCounter.text = String(self.emojiChangesCounter)
    }
    
    @IBAction private func resetValueOfChangeEmojiTap(_ sender: UIButton) {
        if self.emojiChangesCounter > 0 {
            self.valueOfEmojiChangeCounter.text = String(0)
            self.emojiChangesCounter = 0
        }
    }
}

