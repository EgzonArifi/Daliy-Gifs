//
//  CategoriesCell.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/13/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit

class CategoriesCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
