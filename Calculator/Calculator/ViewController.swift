//
//  ViewController.swift
//  Calculator
//
//  Created by Dante Coelho Cerqueira Santos on 2019-06-18.
//  Copyright © 2019 Dante Coelho Cerqueira Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: class variables
    var calculations = Calculations()
    var readyToFlushLabel = false
    
    //MARK: Outlets
    @IBOutlet weak var numberDisplayLabel: UILabel!
    
    @IBOutlet var allButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //TODO: change label background
        
        //FIXME: allow decimal numbers
        
        numberDisplayLabel.layer.borderWidth = 1
        
    }

    //MARK: Event listeners
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button pressed!")
        let buttonValue = sender.currentTitle
        print(buttonValue ?? "??")
        
        var currentLabelValue = numberDisplayLabel.text!
        if (currentLabelValue == "0"){
            currentLabelValue = ""
        }
        
        print("current val is " + currentLabelValue)
        
        switch(buttonValue){
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            if (readyToFlushLabel)
                {
                    currentLabelValue = buttonValue!
                    readyToFlushLabel = false
                } else {
                currentLabelValue = currentLabelValue + buttonValue!
            }
        case "C":
            //TODO: clear content
            currentLabelValue = "0"
        case ".":
            //TODO: process "."
            if (!currentLabelValue.contains("."))
            {
                currentLabelValue = currentLabelValue + "."
            }
        case "+":
        //TODO:Sum operation
            calculations.firstNumber = Double(currentLabelValue)
            calculations.operation = "+"
            readyToFlushLabel = true
            
//        case "-":
//        //TODO:Sum operation
//        case "*":
//        //TODO:Sum operation
//        case "/":
//        //TODO:Sum operation
            
        case "=":
        //TODO: Equal
            calculations.secondNumber = Double(currentLabelValue)
            if let result = calculations.calculateResult(){
                if (result == floor(result)) {
                    currentLabelValue = String(Int(result))
                }else{
                    currentLabelValue = String(result)
                }
            } else {
                    currentLabelValue = "0"
            }
        default:
            break
        }
        numberDisplayLabel.text = currentLabelValue
    }
}

