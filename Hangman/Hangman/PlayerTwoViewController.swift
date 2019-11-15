//
//  PlayerTwoViewController.swift
//  Hangman
//
//  Created by Melinda Diaz on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class PlayerTwoViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var hangmanLabel: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hangmanImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func hiddenWord(_ sender: UITextField) {
    }
    
    @IBAction func playerTwoSubmitButton(_ sender: UIButton) {
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
