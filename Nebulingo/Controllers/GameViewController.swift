//
//  GameViewController.swift
//  Nebulingo
//
//  Created by jose salazar on 2023-12-01.
//

import UIKit

class GameViewController: UIViewController {
    
    var receivedVerb: FrenchVerb?
    @IBOutlet weak var lblCurrent: UILabel!
    var level: String?
    @IBOutlet weak var txtVerb: UILabel!
    @IBOutlet weak var txtTime: UILabel!
    @IBOutlet weak var txtLevel: UILabel!
    @IBAction func btnBackTouchUpInside(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBOutlet weak var tvJe: UITextField!
    @IBOutlet weak var tvTu: UITextField!
    @IBOutlet weak var tvIl: UITextField!
    @IBOutlet weak var tvNous: UITextField!
    @IBOutlet weak var tvVous: UITextField!
    @IBOutlet weak var tvIls: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtVerb.text = receivedVerb?.verb
        txtLevel.text = level
        
        switch level{
        case "Beginner":
            txtTime.text = "Present"
            break;
        case "Intermidiate":
            txtTime.text = "Future"
            break;
        case "Advanced":
            txtTime.text = "Past"
            break;
        default:
            break;
        }
    }
    
    @IBAction func validateAns(_ sender: Any) {
        
        if tvJe.text?.isEmpty ?? true ||
               tvTu.text?.isEmpty ?? true ||
               tvIl.text?.isEmpty ?? true ||
               tvNous.text?.isEmpty ?? true ||
               tvVous.text?.isEmpty ?? true ||
            tvIls.text?.isEmpty ?? true {
            Toast.ok(view: self, title: "Error", message: "Please fill all the text fields.")
        }else{/*
            switch level{
            case "Beginner":
                if(tvJe.text! == receivedVerb?.present?[1]){
                    tvJe.backgroundColor = UIColor.green
                }else{
                    tvJe.backgroundColor = UIColor.red
                }
                
                if(tvTu.text! == receivedVerb?.present?[2]){
                    tvTu.backgroundColor = UIColor.green
                }else{
                    tvTu.backgroundColor = UIColor.red
                }
                
                if(tvIl.text! == receivedVerb?.present?[3]){
                    tvIl.backgroundColor = UIColor.green
                }else{
                    tvIl.backgroundColor = UIColor.red
                }
                
                if(tvNous.text! == receivedVerb?.present?[4]){
                    tvNous.backgroundColor = UIColor.green
                }else{
                    tvNous.backgroundColor = UIColor.red
                }
                
                if(tvVous.text! == receivedVerb?.present?[5]){
                    tvVous.backgroundColor = UIColor.green
                }else{
                    tvVous.backgroundColor = UIColor.red
                }
                
                if(tvIls.text! == receivedVerb?.present?[6]){
                    tvIls.backgroundColor = UIColor.green
                }else{
                    tvIls.backgroundColor = UIColor.red
                }
                
                
                break;
            case "Intermidiate":
                txtTime.text = "Future"
                break;
            case "Advanced":
                txtTime.text = "Past"
                break;
            default:
                break;
            }*/
        }
    }
}
