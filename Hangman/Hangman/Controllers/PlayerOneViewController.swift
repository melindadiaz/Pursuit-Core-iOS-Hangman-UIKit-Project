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
    @IBOutlet weak var instructionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneHiddenWord.delegate = self
        instructionLabel.isHidden = true
    }
    
    @available(iOS 13.0, *)//NOT SURE WHY I NEED TO THIS? USED FIX
    @IBAction func playerOneSubmitButton(_ sender: UIButton) {
        //it creates an instance of your 2nd VC to the 1st VC by using the storyboard. in order to have access to its attributes
        guard let playerTwoVC = storyboard?.instantiateViewController(identifier: "PlayerTwoViewController") as? PlayerTwoViewController else {return}
        guard playerOneHiddenWord.hasText else {return}
        
        playerTwoVC.playerOneWord = playerOneInput
        
        navigationController?.pushViewController(playerTwoVC, animated: true)
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let characterSet = CharacterSet.letters
        if string.rangeOfCharacter(from: characterSet.inverted) != nil {
            return false
        }
        let newLength = text.count + string.count - range.length
        return newLength <= 8
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.isSecureTextEntry = true
        playerOneInput = textField.text ?? ""
        instructionLabel.isHidden = false
        instructionLabel.text = "Press submit button"
        return true
    }
    
    
}

