//
//  Profile.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import Foundation

struct Profile {
    let id: Int
    let age: Int
    
    var avatarUrl: String
    var lastName: String
    var firsName: String
    
    init(id: Int, lastName: String, firstName: String, age: Int, avatarUrl: String) {
        self.id = id
        self.lastName = lastName
        self.firsName = firstName
        self.age = age
        self.avatarUrl = avatarUrl
    }
}
