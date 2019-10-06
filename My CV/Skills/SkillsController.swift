//
//  SkillsController.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit


class SkillsController: UICollectionViewController,UICollectionViewDelegateFlowLayout,SkillsHeaderDelegate {
    
    

    let cellId = "cellId"
    let headerId = "headerId"
    let englishLevel = AllData.english
    let frenchLevel = AllData.french
    let russianLevel = AllData.russian
    let otherSkills = AllData.otherSkills
    var delegateWord = "english"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Work experience"
        collectionView.backgroundColor = .rgb(red: 240, green: 240, blue: 240)
        self.collectionView?.register(SkillsControllerHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        self.collectionView!.register(SkillsCell.self, forCellWithReuseIdentifier: cellId)

    }
    
    func english() {
        delegateWord = "english"
        collectionView.reloadData()
    }
    
    func french() {
        delegateWord = "french"
        collectionView.reloadData()
    }
    
    func russian() {
        delegateWord = "russian"
        collectionView.reloadData()
    }
    
    func other() {
        delegateWord = "other"
        collectionView.reloadData()
    }
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! SkillsControllerHeader
        header.delegate = self
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if delegateWord == "other"{
            let data = otherSkills[indexPath.item]
            if  data["text"] != "Yes" && data["text"] != "B"{

                let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 60)
                let dummyCell = SkillsCell(frame: frame)
                dummyCell.layoutIfNeeded()
                let targetSize = CGSize(width: view.frame.width, height: 1000)
                let estimatedSize = dummyCell.systemLayoutSizeFitting(targetSize)
                let height = max(120, estimatedSize.height)
                return CGSize(width: view.frame.width, height: height)
            } else {
                return CGSize(width: view.frame.width, height:   60)
            }
        } else {
            return CGSize(width: view.frame.width, height:   60)
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if delegateWord == "english"{
            return englishLevel.count
        } else if delegateWord == "french"{
            return frenchLevel.count
        } else if delegateWord == "russian"{
            return russianLevel.count
        } else {
            return otherSkills.count
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if delegateWord == "english" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SkillsCell
            
            let data = self.englishLevel[indexPath.row]
            cell.titleLabel.text = data["title"]
            cell.infoLabel.text = data["text"]
            return cell
        } else if delegateWord == "french" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SkillsCell
            
            let data = self.frenchLevel[indexPath.row]
            cell.titleLabel.text = data["title"]
            cell.infoLabel.text = data["text"]
            return cell
        } else if delegateWord == "russian" {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SkillsCell
            
            let data = self.russianLevel[indexPath.row]
            cell.titleLabel.text = data["title"]
            cell.infoLabel.text = data["text"]
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SkillsCell
            
            let data = self.otherSkills[indexPath.row]
            cell.titleLabel.text = data["title"]
            cell.infoLabel.text = data["text"]
            return cell
        }
    }

}
