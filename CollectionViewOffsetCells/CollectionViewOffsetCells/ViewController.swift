//
//  ViewController.swift
//  CollectionViewOffsetCells
//
//  Created by Ahsan Mughal on 09/06/2020.
//  Copyright © 2020 Ahsan. All rights reserved.
//

import UIKit


class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath)
        cell.backgroundColor = colors[indexPath.item]
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 12
      
      
        return cell
    }
   
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var colors : [UIColor] = [UIColor.red , UIColor.systemBlue , UIColor.systemPink , UIColor.systemTeal , UIColor.systemIndigo , UIColor.systemPurple , UIColor.red , UIColor.systemBlue , UIColor.systemPink , UIColor.systemTeal , UIColor.systemIndigo , UIColor.systemPurple , UIColor.red , UIColor.systemBlue , UIColor.systemPink , UIColor.systemTeal , UIColor.systemIndigo , UIColor.systemPurple , UIColor.green , UIColor.systemPink]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "mycell")
        if let layout = collectionView.collectionViewLayout as? HiveLayout{
            print(layout)
            collectionView.collectionViewLayout = layout
          
        }
        collectionView.contentInset = UIEdgeInsets(top: 20, left: 10, bottom: 60, right: 10)

    }


}

