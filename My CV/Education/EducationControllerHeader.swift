//
//  EducationControllerHeader.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit


protocol EducationHeaderDelegate {
    func wentToElsys()
    func studyInTU()
}

class EducationControllerHeader: UICollectionViewCell {
    var delegate: EducationHeaderDelegate?    
    lazy var TU: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Technical University - Sofia", for: .normal)
        button.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        //        button.titleLabel?.textAlignment = .center
        //        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        button.addTarget(self, action: #selector(studyInTU), for: .touchUpInside)
        return button
    }()
    lazy var ELSYS: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("TUES/ELSYS", for: .normal)
        button.tintColor = UIColor(white: 0, alpha: 0.2)
        button.addTarget(self, action: #selector(wentToElsys), for: .touchUpInside)
        return button
    }()
    
    @objc func studyInTU(){
        ELSYS.tintColor = UIColor(white: 0, alpha: 0.2)
        TU.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        delegate?.studyInTU()
    }
    @objc func wentToElsys(){
        ELSYS.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        TU.tintColor = UIColor(white: 0, alpha: 0.2)
        delegate?.wentToElsys()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.rgb(red: 240, green: 240, blue: 240)
        addSubview(TU)
        addSubview(ELSYS)
        TU.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 75, paddingRight: 0, width: 0, height: 0)
        ELSYS.anchor(top: TU.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 75)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
