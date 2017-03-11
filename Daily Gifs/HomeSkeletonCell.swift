//
//  HomeSkeletonCell.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/11/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit

class HomeSkeletonCell: UITableViewCell {

    @IBOutlet weak var gifPlaceholder: UIView!
    @IBOutlet weak var firstContent: UIView!
    @IBOutlet weak var secondContent: UIView!
    @IBOutlet weak var thirdContent: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
}
