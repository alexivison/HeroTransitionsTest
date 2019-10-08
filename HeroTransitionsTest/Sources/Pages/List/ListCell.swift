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

    @IBOutlet weak var albumDetailView: UIView!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bandView: UIView!
    @IBOutlet weak var bandNameLabel: UILabel!
    
    func bind(_ context: ListCell.Context) {
        albumDetailView.hero.id = "albumDetail-\(context.album.id)"
        
        thumbnailImageView.image = UIImage(named: context.album.thumbnailUrl)
        thumbnailImageView.hero.isEnabled = true
        thumbnailImageView.hero.id = "thumbnailImageView-\(String(context.album.id))"

        titleView.hero.isEnabled = true
        titleView.hero.id = "titleLabel-\(String(context.album.id))"
        titleLabel.text = context.album.title
        
        bandView.hero.isEnabled = true
        bandView.hero.id = "bandNameLabel-\(context.album.id)"
        bandNameLabel.text = context.album.band.name
    }

}
