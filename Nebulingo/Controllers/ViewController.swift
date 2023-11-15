//
//  ViewController.swift
//  Nebulingo
//
//  Created by Francisco Vargas on 11/7/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SignUpTouchUpInside(_ sender: Any? ) {
        performSegue(withIdentifier: Segue.toSignUpViewController, sender: self)
    }
    
    @IBAction func btnLogInTouchUpInside(_ sender: Any) {
        performSegue(withIdentifier: Segue.toHomeViewController, sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

