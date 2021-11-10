//
//  TableViewCell.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 4.11.2021.
//

import UIKit
import Firebase

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    
    @IBOutlet weak var documentID: UILabel!
    @IBOutlet weak var buttonlike: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageCell.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTap))
        tap.numberOfTapsRequired = 2
        imageCell.addGestureRecognizer(tap)
        
        buttonlike.layer.cornerRadius = 15
        buttonlike.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func likeButton(_ sender: Any) {
        let firestoreData = Firestore.firestore()
        
        if let likeCount = Int(likeLabel.text!) {
            
            let likeStore = ["likes" : likeCount + 1] as [String : Any]
            
            firestoreData.collection("Posts").document(documentID.text!).setData(likeStore, merge: true)
        }
        
    }
    
    @objc func doubleTap() {
        let firestoreData = Firestore.firestore()
        
        if let likeCount = Int(likeLabel.text!) {
            
            let likeStore = ["likes" : likeCount + 1] as [String : Any]
            
            firestoreData.collection("Posts").document(documentID.text!).setData(likeStore, merge: true)
        }
    }
    
}
