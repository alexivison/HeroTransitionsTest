//
//  Injectable.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/07.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import Foundation

protocol Injectable {
    associatedtype Dependency
    func inject(_ dependency: Dependency)
}
