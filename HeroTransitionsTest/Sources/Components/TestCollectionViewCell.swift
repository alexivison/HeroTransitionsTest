//
//  TestTableViewCell.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/03.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    struct Context {
        var id: Int
        var image: UIImage?
        var title: String
    }
    
    private let imageView = UIImageView()
    
    private let titleLabel = Label()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        commonInit()
    }
    
    private func commonInit() {
        layer.cornerRadius = 16
        
        imageView.contentMode = .scaleAspectFill
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        titleLabel.backgroundColor = .white
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: frame.height * 0.4).isActive = true
    }
    
    public func bind(_ context: Context) {
        imageView.image = context.image
        imageView.hero.isEnabled = true
        imageView.hero.id = "testImageView-\(String(context.id))"
        
        titleLabel.hero.isEnabled = true
        titleLabel.hero.id = "testImageTitleLabel-\(String(context.id))"
        titleLabel.text = context.title
    }
}
