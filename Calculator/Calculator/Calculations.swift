//
//  Calculations.swift
//  Calculator
//
//  Created by Dante Coelho Cerqueira Santos on 2019-06-18.
//  Copyright © 2019 Dante Coelho Cerqueira Santos. All rights reserved.
//

import Foundation

class Calculations{
    var firstNumber: Double?
    var secondNumber: Double?
    
    var operation: String?
    
    func calculateResult() -> Double?{
            if(firstNumber != nil)
            {
                if (operation != nil)
                {
                    if(secondNumber != nil)
                    {
                        switch(operation)
                        {
                        case "+":
                            return firstNumber! + secondNumber!
                        default:
                            return nil
                        }
                    } else {
                        return firstNumber!
                    }
                } else {
                    return firstNumber!
                }
            } else {
                return 0.0
        }
    }
}
