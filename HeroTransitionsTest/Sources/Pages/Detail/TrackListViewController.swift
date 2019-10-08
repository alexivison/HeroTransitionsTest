//
//  TrackListViewController.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/08.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

class TrackListViewController: UIViewController, Injectable {
    
    struct Dependency {
        var tracks: [Track]
    }
    
    private var tracks: [Track]!

    @IBOutlet weak var trackListStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for track in tracks {
            let trackView = TrackListView
                .instanciate()
            trackView.bind(TrackListView.Context(track: track) { track in
                print(track)
            })
            
            trackListStackView.addArrangedSubview(trackView)
        }
    }
    
    func inject(_ dependency: TrackListViewController.Dependency) {
        self.tracks = dependency.tracks
    }
}
