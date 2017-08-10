//
//  PostCellTableViewCell.swift
//  Chatter
//
//  Created by iD Student on 8/8/17.
//  Copyright © 2017 BohanMa. All rights reserved.
//

import UIKit

class PostCellTableViewCell: UITableViewCell {
    @IBOutlet weak var postTextLabel: UILabel!
    //@IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var endDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
