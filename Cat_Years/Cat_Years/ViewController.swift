//
//  ViewController.swift
//  Cat_Years
//
//  Created by Dante Coelho Cerqueira Santos on 2019-07-16.
//  Copyright © 2019 Dante Coelho Cerqueira Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBAction func submitPressed(_ sender: Any) {
        
        ageLabel.text = String(Int(ageTextField.text!)! * 7)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

