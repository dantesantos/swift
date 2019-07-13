//
//  Dante_TableViewController.swift
//  Dante_Blue_TicTacToe
//
//  Created by Dante Coelho Cerqueira Santos on 2019-06-19.
//  Copyright © 2019 Dante Coelho Cerqueira Santos. All rights reserved.
//

import UIKit

class Dante_TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let numberOfGamesPlayed = UserDefaults.standard.integer(forKey: "numberOfGamesPlayed")
        return numberOfGamesPlayed
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dante_table_cell", for: indexPath) as! Dante_TableViewCell

        // Configure the cell...
        
        let numberOfGamesPlayed = UserDefaults.standard.integer(forKey: "numberOfGamesPlayed")
        
        let thisCellGameIndex = numberOfGamesPlayed - indexPath.row
        
        let whoWon = UserDefaults.standard.string(forKey: "Result_" + String(thisCellGameIndex))
        
        let timeStamp = UserDefaults.standard.double(forKey: "TimeStamp_" + String(thisCellGameIndex))

        let gameDate = Date(timeIntervalSince1970: timeStamp)
        
        cell.who_won.text = whoWon
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        
        cell.date_played.text = dateFormatter.string(from: gameDate)
        
        if(whoWon == "X Won!"){
            cell.win_loss_image.image = UIImage(named: "Blue_Win")
        } else {
            cell.win_loss_image.image = UIImage(named: "Blue_Loss")
        }
        
        cell.orderOfMoves = (UserDefaults.standard.array(forKey: "OrderOfMoves_" + String(thisCellGameIndex)) as! [Int])
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        print("Segue identifier is \(segue.identifier!)")
        
        if(segue.identifier == "newGame"){
            return
        }
        
        //prepare to send past game data
        let thisCell = sender as! Dante_TableViewCell
        print ("check cell data")
        //thisCell.
        let destinationViewController = segue.destination as! Dante_GameViewController
        
        destinationViewController.isPastGame = true
        destinationViewController.orderOfMoves = thisCell.orderOfMoves
    }

    
}
