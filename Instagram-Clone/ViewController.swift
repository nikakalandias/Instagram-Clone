//
//  ViewController.swift
//  Instagram-Clone
//
//  Created by Nika Kalandia on 28.10.2021.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText:
        UITextField!
    @IBOutlet weak var signInoutlet: UIButton!
    
    @IBOutlet weak var signupOutlet: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        signupOutlet.layer.cornerRadius = 15
        signupOutlet.layer.masksToBounds = true
        
        signInoutlet.layer.cornerRadius = 15
        signInoutlet.layer.masksToBounds = true

        
    }

    @IBAction func signinButton(_ sender: Any) {
        
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { authdata, error in
                if error != nil {
                    self.Alert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        }else {
            Alert(titleInput: "Error!", messageInput: "Plase enter your e-mail or password!")
        }
        
    }
    
    @IBAction func signupButton(_ sender: Any) {
        
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { authdata, error in
                if error != nil {
                    self.Alert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error!")
                    
                }else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        }else {
            Alert(titleInput: "Error!", messageInput: "Please enter your e-mail or password!")
        }
        

        
    }
    
    func Alert(titleInput:String, messageInput:String) {
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
}

