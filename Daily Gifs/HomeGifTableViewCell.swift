//
//  HomeGifTableViewCell.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/5/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit

class HomeGifTableViewCell: UITableViewCell {

    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet weak var titleGif: UILabel!
    @IBOutlet weak var timeAgo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(model: Data)  {
        self.gifImageView.setShowActivityIndicator(true)
        self.gifImageView.setIndicatorStyle(.gray)
        self.gifImageView.sd_setImage(with: URL(string: (model.images.original.url)!))
        self.titleGif.text = (model.slug)!
    }
}
