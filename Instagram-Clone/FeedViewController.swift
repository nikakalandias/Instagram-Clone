//
//  FeedViewController.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 31.10.2021.
//

import UIKit
import Firebase

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var mailArray = [String]()
    var captionArray = [String]()
    var imageArray = [String]()
    var likeArray = [Int]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        getDataFirebase()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mailArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.mailLabel.text = mailArray[indexPath.row]
        cell.captionLabel.text = captionArray[indexPath.row]
        cell.likeLabel.text = String(likeArray[indexPath.row])
        cell.imageCell.image = UIImage(named: "select")
        
        return cell
    }
    
    func getDataFirebase() {
        
        let fireStoreData = Firestore.firestore()
        
        fireStoreData.collection("Posts").addSnapshotListener { snapShot, error in
            if error != nil {
                print("Error!")
            }else {
                if snapShot?.isEmpty == false {
                    
                    for document in snapShot!.documents {
                        let documentID = document.documentID
                        
                        if let postedBy = document.get("postedBy") as? String {
                            self.mailArray.append(postedBy)
                            
                        }
                        
                        if let postComment = document.get("postComment") as? String {
                            self.captionArray.append(postComment)
                        }
                        
                        if let likes = document.get("likes") as? Int {
                            self.likeArray.append(likes)
                        }
                        
                        if let imageUrl = document.get("imageUrl") as? String {
                            self.imageArray.append(imageUrl)
                        }
                        
                    }
                    
                    self.tableView.reloadData()
                    
                }
                
                
            }
        }

        
        
        
    }


}
