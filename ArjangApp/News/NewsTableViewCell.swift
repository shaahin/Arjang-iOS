//
//  NewsTableViewCell.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 9/22/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var newsTitleLabel: UILabel!
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsDateLabel: UILabel!
    @IBOutlet weak var newsShortDescriptionLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
