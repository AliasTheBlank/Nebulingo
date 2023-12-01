//
//  GameViewController.swift
//  Nebulingo
//
//  Created by jose salazar on 2023-12-01.
//

import UIKit

class GameViewController: UIViewController {
    
    var receivedVerb: Verb?
    @IBOutlet weak var lblCurrent: UILabel!
    var level: String?
    @IBOutlet weak var txtVerb: UILabel!
    @IBOutlet weak var txtTime: UILabel!
    @IBOutlet weak var txtLevel: UILabel!
    @IBAction func btnBackTouchUpInside(_ sender: Any) {
        self.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        txtVerb.text = receivedVerb?.infinitif
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
}
