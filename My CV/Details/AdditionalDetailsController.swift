//
//  AdditionalDetailsController.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 7.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit

class AdditionalDetailsController: UIViewController {
    let additionalDetailsLabel: UITextView = {
        let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: 14)
        tv.isScrollEnabled = true
        tv.isEditable = false
        tv.backgroundColor = .white
        return tv
    }()
    let detailsData = AllData.additionalDetails
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .rgb(red: 240, green: 240, blue: 240)
        navigationItem.title = "Additional Details"
        additionalDetailsLabel.text = detailsData
        view.addSubview(additionalDetailsLabel)
        additionalDetailsLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        additionalDetailsLabel.contentOffset = .zero
    }
}
