//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation
protocol BlackJack {
//    var card1: Int {get set}
//    var card2: Int {get set}
//    var firstHandSum:Int {get set}
//    var finalScore: Int {get set}
//    //    // Require a deal method
//    func addCard() -> Int
////    // Require a first hand method
//    func firstHand()->Int
    }

class CardGame: BlackJack {
    var card1 = 0
    var card2 = 0
    var firstDeal = 0
    var hitMe = 0
    var dealerScore = 0
    
    func firstHand()  {
        self.card1 = Int(arc4random_uniform(10)+1)
        self.card2 = Int(arc4random_uniform(10)+1)
        self.firstDeal = self.card1 + self.card2 //adds the first two cards
        self.dealerScore = Int(arc4random_uniform(9)+12)
    }
    
    func deal() {
        self.hitMe = Int(arc4random_uniform(10)+1) //generates another card
        self.firstDeal = self.hitMe + self.firstDeal //sums the cards
    }

}