//
//  UIViewController+Extension.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/03.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

extension UIViewController {
    static func instantiate() -> UIViewController {
        return UIStoryboard(name: String(describing: self), bundle: nil).instantiateViewController(withIdentifier: String(describing: self))
    }
}
