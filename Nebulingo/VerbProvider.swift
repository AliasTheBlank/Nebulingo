//
//  VerbProvider.swift
//  Nebulingo
//
//  Created by jose salazar on 2023-12-01.
//

import Foundation

class VerbProvider {
    static var allVerbs = [Verb]()
    
    static func generateVerbData() {
        var verb = Verb()
        
        //verb.infinitif = "avoir"
        //verb.present = [1 : "ai", 2 : "as", 3: "a", 4:"avons", 5: "avez", 6:"ont"]
        
        allVerbs.append(Verb(infinitif: "avoir", present: [1 : "ai", 2 : "as", 3: "a", 4:"avons", 5: "avez", 6:"ont"]))
        allVerbs.append(Verb(infinitif: "aller", present: [1 : "vais", 2 : "vas", 3: "va", 4:"allons", 5: "allez", 6:"vont"]))
        allVerbs.append(Verb(infinitif: "Etre", present: [1 : "suis", 2 : "es", 3: "est", 4:"sommes", 5: "etes", 6:"sont"]))
        
        allVerbs.append(verb)
    }
    
}
