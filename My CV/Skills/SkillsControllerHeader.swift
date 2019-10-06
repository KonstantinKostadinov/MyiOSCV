//
//  SkillsControllerHeader.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit

protocol SkillsHeaderDelegate{
    func english()
    func french()
    func russian()
    func other()
}
class SkillsControllerHeader: UICollectionViewCell {
    var delegate: SkillsHeaderDelegate?
    var cellWidth: CGFloat?
    lazy var englishButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Englsih", for: .normal)
        button.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        //        button.titleLabel?.textAlignment = .center
        //        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        button.addTarget(self, action: #selector(english), for: .touchUpInside)
        return button
    }()
    lazy var frenchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("French", for: .normal)
        button.tintColor = UIColor(white: 0, alpha: 0.2)
        button.addTarget(self, action: #selector(french), for: .touchUpInside)
        return button
    }()
    lazy var russianButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Russian", for: .normal)
        button.tintColor = UIColor(white: 0, alpha: 0.2)
        button.addTarget(self, action: #selector(russian), for: .touchUpInside)
        return button
    }()
    
    lazy var otherSkillsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Other skills", for: .normal)
        button.tintColor = UIColor(white: 0, alpha: 0.2)
        button.addTarget(self, action: #selector(other), for: .touchUpInside)
        return button
    }()
    
    @objc func english(){
        englishButton.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        frenchButton.tintColor = UIColor(white: 0, alpha: 0.2)
        russianButton.tintColor = UIColor(white: 0, alpha: 0.2)
        otherSkillsButton.tintColor = UIColor(white: 0, alpha: 0.2)
        delegate?.english()
    }
    @objc func french(){
        frenchButton.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        englishButton.tintColor = UIColor(white: 0, alpha: 0.2)
        russianButton.tintColor = UIColor(white: 0, alpha: 0.2)
        otherSkillsButton.tintColor = UIColor(white: 0, alpha: 0.2)
        delegate?.french()
    }
    
    @objc func russian(){
        russianButton.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        frenchButton.tintColor = UIColor(white: 0, alpha: 0.2)
        englishButton.tintColor = UIColor(white: 0, alpha: 0.2)
        otherSkillsButton.tintColor = UIColor(white: 0, alpha: 0.2)
        delegate?.russian()
    }
    @objc func other(){
        otherSkillsButton.tintColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        frenchButton.tintColor = UIColor(white: 0, alpha: 0.2)
        russianButton.tintColor = UIColor(white: 0, alpha: 0.2)
        englishButton.tintColor = UIColor(white: 0, alpha: 0.2)
        delegate?.other()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        cellWidth = CGFloat((frame.width - 2.0)/3.0)
        print("RAZMERA E: \(cellWidth!)")
        addSubview(englishButton)
        addSubview(russianButton)
        addSubview(frenchButton)
        addSubview(otherSkillsButton)
        let stackView = UIStackView(arrangedSubviews: [englishButton,frenchButton,russianButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        addSubview(stackView)
        stackView.anchor(top: safeAreaLayoutGuide.topAnchor, left: leftAnchor, bottom: otherSkillsButton.topAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0 , width: 0, height: 75)
        otherSkillsButton.anchor(top: englishButton.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
