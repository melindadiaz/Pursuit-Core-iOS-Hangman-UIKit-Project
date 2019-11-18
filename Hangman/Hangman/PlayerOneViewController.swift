//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class PlayerOneViewController: UIViewController, UITextFieldDelegate {
    
    var gameBrainReference = GameBrain()
    var playerOneInput = String()
    var hiddenWord = String()
    @IBOutlet weak var playerOneHiddenWord: UITextField!
    @IBOutlet weak var invalidResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        invalidResultLabel.isHidden = true
        
    }
    
    @IBAction func playerOneSubmitButton(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewTwo = segue.destination as? PlayerTwoViewController else {
            return
        }
        viewTwo.playerOneWord = playerOneInput.lowercased()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        playerOneInput = textField.text ?? ""
        invalidResultLabel.isHidden = false
        invalidResultLabel.text = "Press submit when done below."
        return true
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let textFieldText = textField.text else {
            invalidResultLabel.isHidden = false
            return false
        }
        //below is used to allow the user to delete when they made a mistake
        let char = string.cString(using: String.Encoding.utf8)!
        let isBackSpace = strcmp(char, "\\b")
        if isBackSpace != -92 && !Character(string).isLetter {
            invalidResultLabel.isHidden = false
            invalidResultLabel.text = "no only letters" // make invalid result appear
            return false
        } else {
            
        }
        return true
    }
    
    //still need to rstrict special characters and white spaces and numbers
}
