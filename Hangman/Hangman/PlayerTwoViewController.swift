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
    @IBOutlet weak var hiddenWord: UILabel!
    @IBOutlet weak var hangmanLabel: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hangmanImage: UIImageView!
    
    
    
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

       
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

