//
//  ProfileListCell.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

class ListCell: UICollectionViewCell, HasNib, HasContext {

    struct Context {
        var profile: Profile
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    func bind(_ context: ListCell.Context) {
        hero.id = "testView-\(context.profile.id)"
        
        imageView.image = UIImage(named: context.profile.avatarUrl)
        imageView.hero.isEnabled = true
        imageView.hero.id = "testImageView-\(String(context.profile.id))"

        nameLabel.hero.isEnabled = true
        nameLabel.hero.id = "testImageTitleLabel-\(String(context.profile.id))"
        nameLabel.text = "\(context.profile.firsName) \(context.profile.lastName)"
        
        ageLabel.hero.isEnabled = true
        ageLabel.hero.id = "ageLabel-\(context.profile.id)"
        ageLabel.text = String(context.profile.age)
    }

}
