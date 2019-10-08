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

        controller.inject(DetailViewController.Dependency(album: DummyAlbums[indexPath.row]))
        
        present(controller, animated: true)
    }
}

extension ListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.width)
    }
}

extension ListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DummyAlbums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ListHeader", for: indexPath)

        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCell", for: indexPath) as! ListCell
        
        cell.bind(ListCell.Context(album: DummyAlbums[indexPath.row]))
        
        return cell
    }
}

