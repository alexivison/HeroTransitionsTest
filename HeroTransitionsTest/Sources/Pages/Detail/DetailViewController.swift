//
//  ViewController2.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/03.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit
import Hero

class DetailViewController: UIViewController, Injectable {
    
    struct Dependency {
        var album: Album
    }
    
    private var album: Album!
    private var heroId: String!

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bandNameLabel: UILabel!
    @IBOutlet weak var trackStackView: UIStackView!
    
    func inject(_ dependency: Dependency) {
        self.album = dependency.album
        self.heroId = String(dependency.album.id)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.hero.isEnabled = true
        view.hero.id = "shopDetail-\(heroId!)"
        
        thumbnailImageView.hero.isEnabled = true
        thumbnailImageView.hero.id = "thumbnailImageView-\(heroId!)"
        thumbnailImageView.image = UIImage(named: album.thumbnailUrl)
        
        titleLabel.hero.isEnabled = true
        titleLabel.hero.id = "titleLabel-\(heroId!)"
        titleLabel.text = album.title
        
        bandNameLabel.hero.isEnabled = true
        bandNameLabel.hero.id = "bandNameLabel-\(heroId!)"
        bandNameLabel.text = album.band.name
        
        setTracks()
    }
    
    private func setTracks() {
        let tracks = album.tracks
        
        for track in tracks {
            let trackView = UILabel()
            trackView.text = track.title
            
            trackStackView.addArrangedSubview(trackView)
        }
    }
}
