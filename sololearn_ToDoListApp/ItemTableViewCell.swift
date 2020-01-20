//
//  ItemTableViewCell.swift
//  sololearn_ToDoListApp
//
//  Created by MAC on 20/01/2020.
//  Copyright © 2020 Gera Volobuev. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
