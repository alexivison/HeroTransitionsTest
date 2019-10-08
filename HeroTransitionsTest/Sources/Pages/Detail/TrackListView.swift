//
//  TrackListView.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/08.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit

class TrackListView: UIView, HasNib, HasContext {
    typealias TrackTapClosure = (Track) -> Void

    struct Context {
        var track: Track
        var onTap: TrackTapClosure
    }
    
    private var track: Track!
    private var onTapClosure: TrackTapClosure?

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        addGestureRecognizer(tapRecognizer)
    }
    
    func bind(_ context: TrackListView.Context) {
        track = context.track
        
        numberLabel.text = String(track.number)
        
        nameLabel.text = track.title
        
        lengthLabel.text = String(track.length)
        
        onTapClosure = context.onTap
    }
    
    @objc
    private func tapHandler() {
        onTapClosure?(track)
    }
}
