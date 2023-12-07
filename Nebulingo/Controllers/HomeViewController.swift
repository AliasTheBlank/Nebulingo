//
//  HomeViewController.swift
//  Nebulingo
//
//  Created by Aldo Lozano on 2023-11-15.
//

import UIKit

class HomeViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var picker: UIPickerView!
    //var options = VerbProvider.allVerbs;
    var options: [String]?
    //var selectedVerb: Verb?;
    var level: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        picker.dataSource = self
        picker.delegate = self
        
        //VerbProvider.generateVerbData()
        //options = VerbProvider.allVerbs
        //options = []
        
        FrenchVerbAPI.getRandomVerbs(number: 30, successHandler: { verbs in
            DispatchQueue.main.async {
                self.options = verbs
                self.picker.reloadAllComponents()
            }
        }, failHandler: { httpStatusCode, errorMessage in
            print("failed with \(httpStatusCode) - \(errorMessage)")
        })
        //selectedVerb = options[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options?.count ?? 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options?[row]
        }

        // Manejar la selección del usuario en el picker
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // Aquí puedes manejar lo que sucede cuando el usuario selecciona una opción
        // textField.text = options[row]
        //selectedVerb = options[row]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //(segue.destination as! GameViewController).receivedVerb = selectedVerb
        (segue.destination as! GameViewController).level = level
    }
    @IBAction func btnBeginnerTouchUpInside(_ sender: Any) {
        level = "Beginner";
    }
    @IBAction func btnLogOut(_ sender: Any) {
        self.dismiss(animated: true)
    }
    @IBAction func btnIntermidiateTouchUpInside(_ sender: Any) {
        level = "Intermidiate";
    }
    @IBAction func btnAdvancedTouchUpInside(_ sender: Any) {
        level = "Advanced";
    }
}
