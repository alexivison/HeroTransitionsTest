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
    
    private var screenEdgeRecognizer: UIScreenEdgePanGestureRecognizer!

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var albumDetailView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bandNameLabel: UILabel!
    
    func inject(_ dependency: Dependency) {
        self.album = dependency.album
        self.heroId = String(dependency.album.id)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenEdgeRecognizer = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleGesture))
        screenEdgeRecognizer.edges = .left
        
        view.addGestureRecognizer(screenEdgeRecognizer)
        
        albumDetailView.hero.isEnabled = true
        albumDetailView.hero.id = "albumDetail-\(heroId!)"
        
        thumbnailImageView.hero.isEnabled = true
        thumbnailImageView.hero.id = "thumbnailImageView-\(heroId!)"
        thumbnailImageView.image = UIImage(named: album.thumbnailUrl)
        
        titleLabel.hero.isEnabled = true
        titleLabel.hero.id = "titleLabel-\(heroId!)"
        titleLabel.text = album.title
        
        bandNameLabel.hero.isEnabled = true
        bandNameLabel.hero.id = "bandNameLabel-\(heroId!)"
        bandNameLabel.text = album.band.name
    }
    
    @objc
    private func handleGesture(sender: UIScreenEdgePanGestureRecognizer) {
        let translation = sender.translation(in: nil)
        let progress = translation.x / 1.5 / view.bounds.width

        switch sender.state {
        case .began:
            dismiss(animated: true)
        case .changed:
            Hero.shared.update(progress)
        default:
            if progress + sender.velocity(in: nil).x / view.bounds.width > 0.3 {
                Hero.shared.finish()
            } else {
                Hero.shared.cancel()
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let trackListViewController = segue.destination as? TrackListViewController {
            trackListViewController.inject(TrackListViewController.Dependency(tracks: album.tracks))
            trackListViewController.view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
}
