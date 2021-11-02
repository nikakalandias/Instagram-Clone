//
//  SettingsViewController.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 31.10.2021.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
