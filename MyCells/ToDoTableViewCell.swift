//
//  ToDoTableViewCell.swift
//  MyToDoList
//
//  Created by Zamir Argashokov on 15.06.2021.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myCheckButton: UIButton!
    @IBOutlet weak var myTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
