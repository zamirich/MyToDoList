//
//  ToDoTableViewCell.swift
//  MyToDoList
//
//  Created by Zamir Argashokov on 15.06.2021.
//

import UIKit
import CoreData

class ToDoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myCheckButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
