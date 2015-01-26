//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game.
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    @IBOutlet weak var dealerScoreLabel: UILabel!
    
    var game = CardGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.game.firstHand()
        self.gameStatusLabel.text = "Your current cards are \(self.game.card1) and \(self.game.card2)"
        self.dealerScoreLabel.text = "The dealer has \(self.game.dealerScore)."
    }
    
    @IBAction func tap2HitMe(sender: UITapGestureRecognizer) {
        if game.playerScore < 22 {
            self.game.deal()
            self.gameStatusLabel.text = "Your current score is \(self.game.playerScore)"
            if self.game.playerScore == 21 {
                self.gameStatusLabel.text = "21! BlackJack! You win!"
            }else {
                self.gameStatusLabel.text = "Your current score is \(self.game.playerScore)"
            }
            
        }
        if game.playerScore > 21 {
            self.gameStatusLabel.text = "Over 21--busted! You lose! "
        }
    }

    @IBAction func swipeRightTotalCompare(sender: UISwipeGestureRecognizer) {
        if self.game.playerScore > self.game.dealerScore && self.game.playerScore < 22 {
            self.gameStatusLabel.text = "You win! Your score is \(self.game.playerScore)."
        }
        else {
            self.gameStatusLabel.text = "You lose! Your score is \(self.game.playerScore). "
        }
    }
    
}

