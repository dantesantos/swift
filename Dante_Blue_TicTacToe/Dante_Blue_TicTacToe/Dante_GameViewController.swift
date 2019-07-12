//
//  Dante_GameViewController.swift
//  Dante_Blue_TicTacToe
//
//  Created by Dante Coelho Cerqueira Santos on 2019-06-19.
//  Copyright © 2019 Dante Coelho Cerqueira Santos. All rights reserved.
//

import UIKit

class Dante_GameViewController: UIViewController {
    
    //MARK:Properties
    var gameModel = Dante_GameModel()
    var acceptNewTouches = true
    
    //MARK: Outlets
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK:Touch events on buttons
    
    @IBAction func squareTouched(_ sender: UIButton) {
        print("button pressed")
        print(sender.tag)
        
        if(sender.currentTitle == nil) && acceptNewTouches{
            sender.setTitle(gameModel.whoseTurnIsIt, for: .normal)
            gameModel.playMove(tag: sender.tag)
            if (gameModel.checkIfGameIsOver()){
                gameStatusLabel.text = gameModel.gameResult
                acceptNewTouches = false
            } else {
                gameStatusLabel.text = gameModel.whoseTurnIsIt + "'s Turn"
            }
        } else {
            
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

}
