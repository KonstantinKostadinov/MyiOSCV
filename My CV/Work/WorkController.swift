//
//  WorkController.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit


class WorkController: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    let work = AllData.workExperience
    
    let cellId = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Work experience"
        collectionView.backgroundColor = .rgb(red: 240, green: 240, blue: 240)
        self.collectionView!.register(WorkCell.self, forCellWithReuseIdentifier: cellId)

    }

    // MARK: UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height:   60)
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return work.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! WorkCell
    
        // Configure the cell
        let data = self.work[indexPath.row]
        cell.titleLabel.text = data["title"]
        cell.infoLabel.text = data["text"]
        return cell
    }
}
