//
//  SettingsViewController.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 31.10.2021.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var outlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        outlet.layer.cornerRadius = 15
        outlet.layer.masksToBounds = true
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        
        do {
            try  Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        }catch {
            print("ERROR")
        }
       
        
    }
    
 

}
