//
//  ViewController.swift
//  Guessing Game
//
//  Created by Dante Coelho Cerqueira Santos on 2019-07-18.
//  Copyright © 2019 Dante Coelho Cerqueira Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    @IBAction func btnGuess(_ sender: Any) {
    
        let diceroll = String(arc4random_uniform(6))
        
        if textField.text == diceroll
        {
            labelResult.text = "You're right!"
        }
        else
        {
            labelResult.text = "Wrong! It was \(diceroll)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

