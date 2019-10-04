//
//  ViewController2.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/03.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit
import Hero

class DetailViewController: UIViewController {
    
    struct Dependency {
        var profile: Profile
    }
    
    private var profile: Profile!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTitleLabel: Label!
    @IBOutlet weak var cancelButton: UIButton!
    
    func inject(_ dependency: Dependency) {
        self.profile = dependency.profile
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.hero.isEnabled = true
        view.hero.id = "testView-\(String(profile.id))"
        
        imageView.hero.isEnabled = true
        imageView.hero.id = "testImageView-\(String(profile.id))"
        imageView.image = UIImage(named: profile.avatarUrl)
        
        imageTitleLabel.hero.isEnabled = true
        imageTitleLabel.hero.id = "testImageTitleLabel-\(String(profile.id))"
        imageTitleLabel.text = "\(profile.firsName) \(profile.lastName)"
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
