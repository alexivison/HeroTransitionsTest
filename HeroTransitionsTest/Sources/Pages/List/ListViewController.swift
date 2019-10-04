//
//  ViewController.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/03.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import UIKit
import Hero

class ListViewController: UIViewController {
    
    @IBOutlet weak var testCollectionView: UICollectionView! {
        didSet {
            testCollectionView.delegate = self
            testCollectionView.dataSource = self
            testCollectionView.registerCell(ListCell.self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = DetailViewController.instantiate() as! DetailViewController

        controller.inject(DetailViewController.Dependency(profile: DummyData[indexPath.row]))
        
        present(controller, animated: true)
    }
}

extension ListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 350)
    }
}

extension ListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DummyData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCell", for: indexPath) as! ListCell
        
        cell.bind(ListCell.Context(profile: DummyData[indexPath.row]))
        
        return cell
    }
}

