//
//  EducationController.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit


class EducationController: UICollectionViewController, UICollectionViewDelegateFlowLayout, EducationHeaderDelegate{
    
    let cellId = "cellId"
    let headerId = "headerId"
    var isInUniversity: Bool = true
    let university = AllData.univeristy
    let school = AllData.school
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Education"
        collectionView.backgroundColor = .rgb(red: 240, green: 240, blue: 240)
        collectionView?.register(EducationControllerHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        self.collectionView!.register(HeaderCell.self, forCellWithReuseIdentifier: cellId)
        
        // Do any additional setup after loading the view.
    }

    func wentToElsys() {
        isInUniversity = false
        collectionView.reloadData()
    }
    
    func studyInTU() {
        isInUniversity = true
        collectionView.reloadData()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! EducationControllerHeader
        header.delegate = self
        return header
    }
    // MARK: UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if isInUniversity {
            return university.count
        } else {
            return school.count
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if isInUniversity{
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier:cellId, for: indexPath) as! HeaderCell
    
            // Configure the cell
            let data = self.university[indexPath.row]
            cell.title.text = data["title"]
            cell.text.text = data["text"]
            return cell
        } else {
            let cell  = collectionView.dequeueReusableCell(withReuseIdentifier:cellId, for: indexPath) as! HeaderCell
            
            // Configure the cell
            let data = self.school[indexPath.row]
            cell.title.text = data["title"]
            cell.text.text = data["text"]
            return cell
        }
    }
}
