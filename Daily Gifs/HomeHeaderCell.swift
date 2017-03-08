//
//  HomeHeaderCell.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/8/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit

class HomeHeaderCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!

    func configureCell(model: Data)  {
        self.avatarImageView.setShowActivityIndicator(true)
        self.avatarImageView.setIndicatorStyle(.gray)

        if (model.user != nil) {
            self.avatarImageView.sd_setImage(with: URL(string: (model.user.avatarUrl!)))
        }
        
        self.usernameLabel.text = (model.username)!
    }
}
