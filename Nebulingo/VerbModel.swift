//
//  VerbModel.swift
//  Nebulingo
//
//  Created by jose salazar on 2023-12-01.
//

import Foundation

class Verb {
    
    var infinitif : String?
    
    var present: Dictionary<Int, String>?
    
    init(infinitif: String, present: Dictionary<Int, String>) {
        self.infinitif = infinitif
        self.present = present
    }
    
    init(){
    }
    
}
