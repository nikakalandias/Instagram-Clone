//
//  SettingsViewController.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 31.10.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    
 

}
