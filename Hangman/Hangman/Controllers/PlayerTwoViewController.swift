//
//  PlayerTwoViewController.swift
//  Hangman
//
//  Created by Melinda Diaz on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class PlayerTwoViewController: UIViewController, UITextFieldDelegate {

  //  let playerOneRef = PlayerOneViewController()
    var gameBrainReference = GameBrain()
    var playerOneWord = String()
    let playerTwoGuesses = [String]()
    var wrongTry = 0
    var wrongAttempts = 6
    @IBOutlet weak var hiddenWord: UILabel!
    @IBOutlet weak var hangmanLabel: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hangmanImage: UIImageView!
    
    @IBOutlet weak var playerTwoInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordsToDashes()
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    @IBAction func playerTwoGuess(_ sender: UITextField) {
    }
    
    func wordsToDashes() {
        //let secretWord = playerOneRef.playerOneInput
        for _ in playerOneWord {
            hiddenWord.text! += "_ "
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let text = textField.text ?? ""
    let characterSet = CharacterSet.letters
    if string.rangeOfCharacter(from: characterSet.inverted) != nil {
        return false
    }
        
    let newLength = text.count + string.count - range.length
    return newLength <= 1
       
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let textFieldText = textField.text else {
        
    return false
}
       
        return false
    }
//               if {
//                   resultLabel.text = "You said that already! Duh! 😒"
//
//               } else if gameBrainReference.copyGameWords.contains(textFieldText) {
//                   resultLabel.isHidden = false
//                   resultLabel.text = "Correct Guess! 🤡"
//                   textField.text = ""
//                   gameBrainReference.guessedWords.append(textFieldText)
//                   gameReference.removeCorrectWords(para: textFieldText)
//                   correctGuessedWords.text = "\(gameReference.guessedWords)"//or .description
//                   if gameReference.winner() {
//                       resultLabel.isHidden = false
//                       resultLabel.text = "YOU WON!! 🥳"
//                       wordsToStarsTextView.isHidden = true
//                   }
//               } else {
//                   resultLabel.isHidden = false
//                   resultLabel.text = "NO! Try Again!👿"
//                   resetLetterBank()
//                   textField.text = ""
//               }
//               return true
//        return true
//    }
//
//    func gamePlay() {
//        if playerOneWord.contains(playerTwoInput.description) {
//            for char in playerOneWord {
//               // if char == playerTwoInput.text {
//                  //  HiddenWord[index] = char
//            //}
//            }
            
//            resultLabel.text = "you typed \(String(describing: playerTwoInput)) great"
//        } else {
//            wrongTry += 1
//            resultLabel.text = "you typed \(String(describing: playerTwoInput)), attempt \(wrongTry) out of 6. Try Again"
//            if wrongTry == wrongAttempts {
//
//            }
}
    
    


