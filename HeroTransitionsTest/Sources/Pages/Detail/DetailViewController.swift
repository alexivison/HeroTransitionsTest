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
        var id: Int
        var image: UIImage
        var imageTitle: String
    }
    
    private var id: Int!
    private var image: UIImage!
    private var imageTitle: String!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTitleLabel: Label!
    @IBOutlet weak var cancelButton: UIButton!
    
    func inject(_ dependency: Dependency) {
        self.id = dependency.id
        self.image = dependency.image
        self.imageTitle = dependency.imageTitle
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.hero.isEnabled = true
        view.hero.id = "testView-\(String(id))"
        
        imageView.hero.isEnabled = true
        imageView.hero.id = "testImageView-\(String(id))"
        imageView.image = image
        
        imageTitleLabel.hero.isEnabled = true
        imageTitleLabel.hero.id = "testImageTitleLabel-\(String(id))"
        imageTitleLabel.text = imageTitle
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
