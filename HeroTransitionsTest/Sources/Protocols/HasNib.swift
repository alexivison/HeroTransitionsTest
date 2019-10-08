//
//  Reusable.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

protocol HasNib {
    static func getNib() -> UINib
}

extension HasNib {
    static var identifier: String {
        return String(describing: self)
    }
    
    static func getNib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}

extension HasNib where Self: UIView & HasNib {
    static func instanciate() -> Self {
        let nib = Self.getNib()
        return nib.instantiate(withOwner: self, options: nil).first as! Self
    }
}
