//
//  RI_tvcell.swift
//  wolfkiler
//
//  Created by aa on 2020/1/20.
//  Copyright © 2020 hsu. All rights reserved.
//

import UIKit

class RI_tvcell: UITableViewCell {
    @IBOutlet weak var role_img: UIImageView!
    @IBOutlet weak var role_lab1: UILabel!
    @IBOutlet weak var role_textview: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
