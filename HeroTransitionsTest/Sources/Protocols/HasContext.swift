//
//  HasContext.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

protocol HasContext {
    associatedtype Context
    func bind(_ context: Context)
}
