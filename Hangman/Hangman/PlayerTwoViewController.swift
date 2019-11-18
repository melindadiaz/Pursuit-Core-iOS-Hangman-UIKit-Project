//
//  PlayerTwoViewController.swift
//  Hangman
//
//  Created by Melinda Diaz on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class PlayerTwoViewController: UIViewController, UITextFieldDelegate {
    
    let playerOneRef = PlayerOneViewController()
    var gameBrainReference = GameBrain()
    var playerOneWord = String()
    let playerTwoGuesses = [String]()
    @IBOutlet weak var hiddenWord: UILabel!
    @IBOutlet weak var hangmanLabel: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hangmanImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordsToDashes()
    }
    
    
    @IBAction func playerTwoGuess(_ sender: UITextField) {
    }
    
    @IBAction func playerTwoSubmitButton(_ sender: UIButton) {
    }
    
    
    
    func wordsToDashes() {
        let secretWord = playerOneRef.playerOneInput
        for _ in secretWord {
            playerOneRef.hiddenWord.append("_")
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let textFieldText = textField.text else {
            return false
        }
        //below is used to allow the user to delete when they made a mistake
        let char = string.cString(using: String.Encoding.utf8)!
        let isBackSpace = strcmp(char, "\\b")
        if isBackSpace != -92 && !Character(string).isLetter {
            return false
        } else {
            
        }
        return true
    }
    
    func saveAllGuesses() {
        //if textField.text.contains(playerTwoGuesses){
            //look at textfield should return
            
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

