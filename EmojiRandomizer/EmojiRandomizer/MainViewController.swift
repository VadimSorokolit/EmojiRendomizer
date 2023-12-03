//
//  MainViewController.swift
//  EmojiRandomizer
//
//  Created by Vadim  on 28.11.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - IBOutlets
    
      @IBOutlet weak private var changeEmojiButton: UIButton!
      @IBOutlet weak private var resetChangesCounterButton: UIButton!
      @IBOutlet weak private var emojiLabel: UILabel!
      @IBOutlet weak private var counterTitleLabel: UILabel!
      @IBOutlet weak private var counterLabel: UILabel!
    
    // MARK: - Properties
  
    private var emojiChangesCounter = 0
    private let emojies = "🦧🦓🏀🎲🚖📱🎄🦜🐿️🌍"
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateResetButton()
        self.setupButtons()
        self.setupLabels()
    }
    
    // MARK: - Methods
    
    private func setupButtons() {
        let halfOfButtonHeight = self.changeEmojiButton.frame.height / 2
        self.changeEmojiButton.layer.cornerRadius = halfOfButtonHeight
        self.resetChangesCounterButton.backgroundColor = nil
    }
    
    private func setupLabels() {
        self.emojiLabel.text = nil
        self.emojiLabel.backgroundColor = UIColor.clear
        self.counterTitleLabel.backgroundColor = nil
        self.counterLabel.backgroundColor = .clear
    }
    
    private func generateNewEmoji() {
        let emoji = self.emojies.randomElement()?.description
        self.emojiLabel.text = emoji
    }
    
    // API for counter
    
    private func increaseCounter() {
        self.emojiChangesCounter += 1
        self.counterLabel.text = String(self.emojiChangesCounter)
        self.updateResetButton()
    }
    
    private func resetCounter() {
        self.emojiChangesCounter = 0
        self.counterLabel.text = String(self.emojiChangesCounter)
        self.updateResetButton()
    }
    
    // API for resetChangesCounterButton
    
    private func updateResetButton() {
        self.resetChangesCounterButton.isHidden = self.emojiChangesCounter == 0
    }
    
    // MARK: - IBActions
    
    @IBAction private func changeEmojiButtonTap(_ sender: UIButton) {
        self.generateNewEmoji()
        self.increaseCounter()
    }
   
    @IBAction private func resetChangesCounterButtonTap(_ sender: UIButton) {
            self.resetCounter()
    }
}




