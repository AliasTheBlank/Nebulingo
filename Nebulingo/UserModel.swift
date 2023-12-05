//
//  UserModel.swift
//  Nebulingo
//
//  Created by jose salazar on 2023-12-01.
//

import Foundation

class User : Equatable {
    
    var username : String?
    var password : String?
    
    init (username: String, password : String) {
        self.username = username
        self.password = password
    }
    
    static func == (lhs: User, rhs : User) -> Bool {
        return lhs.username == rhs.username && lhs.password == rhs.password
    }
}
