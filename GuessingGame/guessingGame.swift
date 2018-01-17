//
//  guessingGame.swift
//  GuessingGame
//
//  Created by Mesburis, Cassie on 2018-01-17.
//  Copyright © 2018 Mesburis, Cassie. All rights reserved.
//

import Foundation
struct GuessingGame {
    
    //Property
    var numberToGuess : Int
    
    //Initializer
    init() {
        numberToGuess = Int(arc4random_uniform(501)) //Generate a number between 0 and 500 (not 501)
    }
    
    //Methods
    func compareNumbers(guessMade: Int) -> String {
        
        //Compare the guess made to the secret number
        if guessMade == numberToGuess {
            return "You got it!"
        } else if guessMade > numberToGuess {
            return "Guess lower."
        } else {
            return "Guess higher."
        }
    }
}
