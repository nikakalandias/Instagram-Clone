//
//  FeedViewController.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 31.10.2021.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.mailLabel.text = "nika@gmail.com"
        cell.captionLabel.text = "I like this place!"
        cell.likeLabel.text = "3"
        cell.imageCell.image = UIImage(named: "select")
        
        return cell
    }


}
