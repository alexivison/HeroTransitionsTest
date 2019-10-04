//
//  UICollectionView+Extension.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

extension UICollectionView {
    func registerCell<T>(_ cell: T.Type) where T: UICollectionViewCell & HasNib {
        return register(cell.getNib(), forCellWithReuseIdentifier: cell.identifier)
    }
}
