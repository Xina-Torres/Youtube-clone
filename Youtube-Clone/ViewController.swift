//
//  ViewController.swift
//  Youtube-Clone
//
//  Created by Maria Xina Rae Torres on 16/04/2018.
//  Copyright © 2018 Maria Xina Rae Torres. All rights reserved.
//

import UIKit
// the trick to building out a CollectionViewCOntroller is to subclass ViewController as UICollectionViewController
class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout     {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        // view.backgroundColor = UIColor.red
        // color of collection view
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }
    // number of items
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
}

