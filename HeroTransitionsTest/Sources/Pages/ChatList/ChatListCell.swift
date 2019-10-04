//
//  ChatListCell.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

class ChatListCell: UICollectionViewCell, HasNib, HasContext {
    struct Context {
        var profile: Profile
    }

    @IBOutlet weak var imageView: ProfileImage!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    func bind(_ context: ChatListCell.Context) {
        imageView.image = UIImage(named: context.profile.avatarUrl)
        nameLabel.text = "\(context.profile.firsName) \(context.profile.lastName)"
        ageLabel.text = String(context.profile.age)
    }

}
