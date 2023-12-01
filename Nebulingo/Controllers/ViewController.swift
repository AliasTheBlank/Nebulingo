//
//  ViewController.swift
//  Nebulingo
//
//  Created by Francisco Vargas on 11/7/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnShowPassword: UIButton!
    
    var userToLogin : User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func SignUpTouchUpInside(_ sender: Any?) {
            self.performSegue(withIdentifier: Segue.toSignUpViewController, sender: self)
    }
    

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if txtUsername.text!.isEmpty {
            Toast.ok(view: self, title: "Error", message: "Please insert an username")
            return false
        }
        if txtPassword.text!.isEmpty {
            Toast.ok(view: self, title: "Error", message: "Please insert the password")
            return false
        }
        
        userToLogin = User(username:txtUsername.text!, password: txtPassword.text!)
        if(UserProvider.allUsers.contains(userToLogin!)){
            
            txtUsername.text! = ""
            txtPassword.text! = ""
            
            return true
            
        }
        Toast.ok(view: self, title: "Error", message: "Username or password credentials are invalid.")
        return false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    @IBAction func btnShowPasswordShow(_ sender: Any) {
        if(!txtPassword.isSecureTextEntry){
            txtPassword.isSecureTextEntry = true
            btnShowPassword.setImage(UIImage(systemName: "eye"), for: .normal)
        }else{
            txtPassword.isSecureTextEntry = false
            btnShowPassword.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }
    }
}

