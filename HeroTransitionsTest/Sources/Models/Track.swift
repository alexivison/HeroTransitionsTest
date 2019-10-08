//
//  Track.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/07.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import Foundation

struct Track {
    let id: Int
    let number: Int
    let title: String
    let length: TimeInterval
    
    init(id: Int, number: Int, title: String, length: TimeInterval) {
        self.id = id
        self.number = number
        self.title = title
        self.length = length
    }
}
