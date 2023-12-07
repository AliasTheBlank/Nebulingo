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
            txtTime.text = "Passe Compose"
            break;
        case "Advanced":
            txtTime.text = "Futur Simple"
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
        }else{
            var verb = receivedVerb?.indicatif
            
            switch level{
            case "Beginner":
                let verbString = verb?.present?.i ?? ""
                var val_je = (verbString.contains("'")) ? "'" : " ";
                
                if(tvJe.text!.lowercased() == verb?.present?.i?.split(separator: val_je)[1] ?? "" ){
                    tvJe.backgroundColor = UIColor.green
                }else{
                    tvJe.backgroundColor = UIColor.red
                }
                
                if(tvTu.text!.lowercased() == verb?.present?.you?.split(separator: " ")[1] ?? ""){
                    tvTu.backgroundColor = UIColor.green
                }else{
                    tvTu.backgroundColor = UIColor.red
                }
                
                if(tvIl.text!.lowercased() == verb?.present?.heSheIt?.split(separator: " ")[1] ?? ""){
                    tvIl.backgroundColor = UIColor.green
                }else{
                    tvIl.backgroundColor = UIColor.red
                }
                
                if(tvNous.text!.lowercased() == verb?.present?.we?.split(separator: " ")[1] ?? ""){
                    tvNous.backgroundColor = UIColor.green
                }else{
                    tvNous.backgroundColor = UIColor.red
                }
                
                if(tvVous.text!.lowercased() == verb?.present?.youAll?.split(separator: " ")[1] ?? ""){
                    tvVous.backgroundColor = UIColor.green
                }else{
                    tvVous.backgroundColor = UIColor.red
                }
                
                if(tvIls.text!.lowercased() == verb?.present?.they?.split(separator: " ")[1] ?? ""){
                    tvIls.backgroundColor = UIColor.green
                }else{
                    tvIls.backgroundColor = UIColor.red
                }
                
                
                break;
            case "Intermidiate":
                txtTime.text = "Passe Compose"
                
                
                
                break;
            case "Advanced":
                txtTime.text = "Futur Simple"
                let verbString = verb?.futurSimple?.i ?? ""
                var val_je = (verbString.contains("'")) ? "'" : " ";
                
                if(tvJe.text!.lowercased() == verb?.futurSimple?.i?.split(separator: val_je)[1] ?? "" ){
                    tvJe.backgroundColor = UIColor.green
                }else{
                    tvJe.backgroundColor = UIColor.red
                }
                
                if(tvTu.text!.lowercased() == verb?.futurSimple?.you?.split(separator: " ")[1] ?? ""){
                    tvTu.backgroundColor = UIColor.green
                }else{
                    tvTu.backgroundColor = UIColor.red
                }
                
                if(tvIl.text!.lowercased() == verb?.futurSimple?.heSheIt?.split(separator: " ")[1] ?? ""){
                    tvIl.backgroundColor = UIColor.green
                }else{
                    tvIl.backgroundColor = UIColor.red
                }
                
                if(tvNous.text!.lowercased() == verb?.futurSimple?.we?.split(separator: " ")[1] ?? ""){
                    tvNous.backgroundColor = UIColor.green
                }else{
                    tvNous.backgroundColor = UIColor.red
                }
                
                if(tvVous.text!.lowercased() == verb?.futurSimple?.youAll?.split(separator: " ")[1] ?? ""){
                    tvVous.backgroundColor = UIColor.green
                }else{
                    tvVous.backgroundColor = UIColor.red
                }
                
                if(tvIls.text!.lowercased() == verb?.futurSimple?.they?.split(separator: " ")[1] ?? ""){
                    tvIls.backgroundColor = UIColor.green
                }else{
                    tvIls.backgroundColor = UIColor.red
                }
                break;
            default:
                break;
            }
        }
    }
}
