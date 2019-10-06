//
//  HomeControllerHeader.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit

class HomeControllerHeader: UICollectionViewCell {
    
    let myImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "beast")
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.rgb(red: 240, green: 240, blue: 240)
        addSubview(myImageView)
        myImageView.anchor(top: topAnchor, left: nil, bottom: bottomAnchor, right: nil, paddingTop: 50, paddingLeft: 0, paddingBottom: 50, paddingRight: 0, width: 150, height: 150)
        myImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myImageView.layer.cornerRadius = 150/2
        myImageView.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
