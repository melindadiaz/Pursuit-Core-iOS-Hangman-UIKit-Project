//
//  HangmanBrain.swift
//  Hangman
//
//  Created by Melinda Diaz on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class GameBrain {
    var letterBank = "abcdefghijklmnopqrstuvwxyz"
    var removedLetter = [String]()
    var userInputLetter = String()
    var gameReference = PlayerOneViewController()
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
          guard let textFieldText = textField.text else {
              return false
          } //below is used to allow the user to delete when they made a mistake
          let char = string.cString(using: String.Encoding.utf8)!
          let isBackSpace = strcmp(char, "\\b")
          if !letterBank.contains(string) && isBackSpace != -92 { //this is backspace
            gameReference.invalidResultLabel.text = "Invalid Input"
              return false
          }
          if isBackSpace == -92 {
              putBackLetter(x: string)
          } else {
              //removedLetter(userInputLetter: string)
          }
          return true
          
      }
    
    func putBackLetter(x:String) {
         let char = x.cString(using: String.Encoding.utf8)!
         let isBackSpace = strcmp(char, "\\b")
         if isBackSpace == -92 {
             letterBank.append(removedLetter.popLast() ?? "")
        }
    
    
    
}
}
