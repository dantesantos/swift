//
//  Dante_TableViewCell.swift
//  Dante_Blue_TicTacToe
//
//  Created by Dante Coelho Cerqueira Santos on 2019-06-19.
//  Copyright © 2019 Dante Coelho Cerqueira Santos. All rights reserved.
//

import UIKit

class Dante_TableViewCell: UITableViewCell {
    
    @IBOutlet weak var win_loss_image: UIImageView!
    @IBOutlet weak var who_won: UILabel!    
    @IBOutlet weak var date_played: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
