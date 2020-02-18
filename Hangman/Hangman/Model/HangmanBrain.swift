//
//  HangmanBrain.swift
//  Hangman
//
//  Created by Melinda Diaz on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class GameBrain {
 
    var guessedLetters = [String]()
    
    
    func setLetterBank(para:String) -> [String] {
        var letterBank = [String]()
        if !letterBank.isEmpty {
            letterBank.removeAll()
        }
        for characters in para {
            letterBank.append(characters.description)
        }
        return letterBank

    
    
  
}
}
