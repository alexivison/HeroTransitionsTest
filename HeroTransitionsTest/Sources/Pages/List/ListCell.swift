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
        var album: Album
    }

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bandNameLabel: UILabel!
    
    func bind(_ context: ListCell.Context) {
        hero.id = "shopDetail-\(context.album.id)"
        
        thumbnailImageView.image = UIImage(named: context.album.thumbnailUrl)
        thumbnailImageView.hero.isEnabled = true
        thumbnailImageView.hero.id = "thumbnailImageView-\(String(context.album.id))"

        titleLabel.hero.isEnabled = true
        titleLabel.hero.id = "titleLabel-\(String(context.album.id))"
        titleLabel.text = context.album.title
        
        bandNameLabel.hero.isEnabled = true
        bandNameLabel.hero.id = "bandNameLabel-\(context.album.id)"
        bandNameLabel.text = context.album.band.name
    }

}
