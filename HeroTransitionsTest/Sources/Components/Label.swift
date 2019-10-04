//
//  TestLabel.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/03.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

@IBDesignable
class Label: UILabel {
    
    @IBInspectable
    var topInset: CGFloat = 8.0

    @IBInspectable
    var bottomInset: CGFloat = 8.0

    @IBInspectable
    var leftInset: CGFloat = 16.0

    @IBInspectable
    var rightInset: CGFloat = 16.0
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize

        return CGSize(
            width: size.width + leftInset + rightInset,
            height: size.height + topInset + bottomInset
        )
    }
}
