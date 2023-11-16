//
//  ViewController.swift
//  Nebulingo
//
//  Created by Francisco Vargas on 11/7/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnShowPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func SignUpTouchUpInside(_ sender: Any?) {
            self.performSegue(withIdentifier: Segue.toSignUpViewController, sender: self)
    }
    
    @IBAction func btnLogInTouchUpInside(_ sender: Any) {
        performSegue(withIdentifier: Segue.toHomeViewController, sender: self)
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

