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
    @IBOutlet weak var txtEmail: UITextField!
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
}
