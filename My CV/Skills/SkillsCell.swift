//
//  SkillsCell.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit

class SkillsCell: UICollectionViewCell {
//    let infoLabel: UILabel = {
//        let label = UILabel()
//        //label.backgroundColor = .red
//        label.font = UIFont.systemFont(ofSize: 16)
//        label.numberOfLines = 0
//        return label
//    }()
    let infoLabel: UITextView = {
        let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.isScrollEnabled = false
        //label.numberOfLines = 0
        //tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .white
        return tv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
//        contentView.translatesAutoresizingMaskIntoConstraints = false

        backgroundColor = .white
        addSubview(titleLabel)
        addSubview(infoLabel)
        titleLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: frame.width, height: 0)
        infoLabel.anchor(top: titleLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 12, paddingBottom: 6, paddingRight: 12, width: frame.width, height: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
