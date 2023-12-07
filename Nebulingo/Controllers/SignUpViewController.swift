//
//  SignUpViewController.swift
//  Nebulingo
//
//  Created by Aldo Lozano on 2023-11-15.
//

import UIKit

class SignUpViewController: UIViewController {
        
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var btnShowPassword: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func btnLogInTouchUpInside(_ sender: Any) {
        FrenchVerbAPI.signIn(email: "aldo@gmail.com", password: "123"){
            token in
            print(token);
            Context.loggedUserToken = token;
        }failHandler: { httpStatusCode, errorMessage in
            print("failed with \(httpStatusCode)")
        }
        print("After calling")
        performSegue(withIdentifier: Segue.toViewController, sender: self)
        self.dismiss(animated: true)
    }
    
    @IBAction func btnShowPasswordShow(_ sender: Any) {
        if(!txtPassword.isSecureTextEntry){
            txtPassword.isSecureTextEntry = true
            txtConfirmPassword.isSecureTextEntry = true
            btnShowPassword.setImage(UIImage(systemName: "eye"), for: .normal)
        }else{
            txtPassword.isSecureTextEntry = false
            txtConfirmPassword.isSecureTextEntry = false
            btnShowPassword.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }
    }
    
    @IBAction func btnSingUp(_ sender: Any) {
        if txtUsername.text!.isEmpty {
            Toast.ok(view: self, title: "Error", message: "Please insert an username")
            return
        }
        if txtPassword.text!.isEmpty {
            Toast.ok(view: self, title: "Error", message: "Please insert the password")
            return
        }
        if txtConfirmPassword.text!.isEmpty {
            Toast.ok(view: self, title: "Error", message: "Please confirm the password")
            return
        }
        if txtConfirmPassword.text! != txtPassword.text! {
            Toast.ok(view: self, title: "Error", message: "Password doesn't")
            return
        }
        /*
        if(UserProvider.allUsers.contains(where: { $0.username == txtUsername.text! })){
            
            Toast.ok(view: self, title: "Error", message: "The user is already in usee")
            
            return
            
        }
        
        let newUser = User(username: txtUsername.text!.lowercased(), password: txtPassword.text!)
        UserProvider.allUsers.append(newUser)*/
        self.dismiss(animated: true)
        
    }
}
