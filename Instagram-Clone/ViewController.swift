//
//  ViewController.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 28.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText:
        UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signinButton(_ sender: Any) {
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    @IBAction func signupButton(_ sender: Any) {
    }
}

