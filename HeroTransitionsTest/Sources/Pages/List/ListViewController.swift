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
    
    private let collectionViewData: [String] = [
        "Hoge", "Hage", "Hige", "Huga",
        "Haga", "Hega", "Hoga", "Moga"
    ]
    
    @IBOutlet weak var testCollectionView: UICollectionView! {
        didSet {
            testCollectionView.delegate = self
            testCollectionView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let controller = DetailViewController.instantiate() as! DetailViewController

        controller.inject(DetailViewController.Dependency(
            id: indexPath.row,
            image: UIImage(named: "image\(indexPath.row)")!,
            imageTitle: collectionViewData[indexPath.row]
        ))
        
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
        return collectionViewData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.hero.modifiers = [.zPosition(1)]
        cell.hero.id = "testView-\(String(describing: indexPath.row))"
        
        cell.bind(CollectionViewCell.Context(
            id: indexPath.row,
            image: UIImage(named: "image\(indexPath.row)"),
            title: collectionViewData[indexPath.row])
        )
        
        return cell
    }
}

