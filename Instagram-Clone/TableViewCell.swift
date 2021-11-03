//
//  TableViewCell.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 4.11.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func likeButton(_ sender: Any) {
    }
    
}
