//
//  MainTabBarController.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController,UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupControllers()
    }
    func setupControllers(){
        let homeNavController = templateNavController(selectedImage: "profile_selected", unselectedImage: "profile_unselected", rootViewController: HomeController(collectionViewLayout: UICollectionViewFlowLayout()))
        let educationalNavController = templateNavController(selectedImage: "education_selected", unselectedImage: "education_unselected", rootViewController: EducationController(collectionViewLayout: UICollectionViewFlowLayout()))
        let workNavController = templateNavController(selectedImage: "work_selected", unselectedImage: "work_unselected", rootViewController: WorkController(collectionViewLayout: UICollectionViewFlowLayout()))
        let skillsNavController = templateNavController(selectedImage: "light_selected", unselectedImage: "light_unselected", rootViewController: SkillsController(collectionViewLayout: UICollectionViewFlowLayout()))
        let additionalNavController = templateNavController(selectedImage: "info_selected", unselectedImage: "info_unselected", rootViewController: AdditionalDetailsController())
        tabBar.tintColor = .black
        viewControllers = [homeNavController,educationalNavController,workNavController,skillsNavController,additionalNavController]

        guard let items = tabBar.items else{return}
        for item in items{
            item.imageInsets = UIEdgeInsets(top: 4, left: 0, bottom: -4 , right: 0)
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    fileprivate func templateNavController(selectedImage: String, unselectedImage: String, rootViewController: UIViewController = UIViewController()) -> UINavigationController{
        let viewController = rootViewController
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = UIImage(named: unselectedImage)
        navController.tabBarItem.selectedImage = UIImage(named: selectedImage)
        return navController
    }
    
}
