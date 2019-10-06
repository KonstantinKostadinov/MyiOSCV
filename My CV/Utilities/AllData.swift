//
//  Personal Details.swift
//  My CV
//
//  Created by Konstantin Kostadinov on 6.09.19.
//  Copyright © 2019 Konstantin Kostadinov. All rights reserved.
//

import Foundation

class AllData{
    //MARK: PERSONAL INFO
    static let personalInfo = [
        [
            "title": "Name",
            "text": "Konstantin Romanov Kostadinov"
        ],
        [
            "title": "E-mail",
            "text": "konstantinkostadinov.elsys@gmail.com"
        ],
        [
            "title": "Citizenship",
            "text": "Bulgaria"
        ],
        [
            "title": "I live in",
            "text": "Sofia/Bulgaria"
        ],
        [
            "title": "Hobbies",
            "text": "Programming, Basketball, Taekwon-do"
        ],
        [
            "title": "Favourite quote",
            "text": "'Stay hungry. Stay foolish.' - Steve Jobs"
        ],
        [
            "title": "Birth date",
            "text": "28.12.1998"
        ],
        [
            "title": "Gender",
            "text": "Male"
        ]
    ]
    //MARK: Education
    static let univeristy = [
        [
            "title": "Dates",
            "text": "Septemver 2017 - till now"
        ],
        [
            "title": "Name of organisation providing education",
            "text": "Technical University - Sofia"
        ],
        [
            "title": "Title of qualification awarded",
            "text": "Computer and Software Engineering"
        ],
        [
            "title": "Level",
            "text": "Bachelor's degree"
        ],
        [
            "title": "Location",
            "text": "Sofia, bul. 'Sveti Kliment Ohridski' 8"
        ]
    ]
    
    static let school = [
        [
            "title": "Dates",
            "text": "Septemver 2012 - May 2017"
        ],
        [
            "title": "Name of organisation providing education",
            "text": "TUES/ELSYS"
        ],
        [
            "title": "Title of qualification awarded",
            "text": "Hardware specialist"
        ],
        [
            "title": "Level",
            "text": "Secondary school"
        ],
        [
            "title": "Location",
            "text": "Sofia, Mladost 1, str. Vladimir Peshov 2"
        ]
    ]
    //MARK: Work experience
    static let workExperience = [
        [
            "title": "Occupation or position held",
            "text": "Tech support intern"
        ],
        [
            "title": "Dates",
            "text": "July 2019 - October 2019"
        ],
        [
            "title": "Name of employer",
            "text": "Coca-Cola HBC"
        ],
        [
            "title": "Type of business or sector",
            "text": "Alcohol Free Beverages"
        ],
        [
            "title": "Location",
            "text": "Prague, Czech Republic"
        ]
    ]
    //MARK: Skills
    static let english = [
        [
            "title": "Comprehension",
            "text": "Intermediate"
        ],
        [
            "title": "Speaking",
            "text": "Intermediate"
        ],
        [
            "title": "Writing",
            "text": "Intermediate"
        ]
    ]
    static let french = [
        [
            "title": "Comprehension",
            "text": "Beginner"
        ],
        [
            "title": "Speaking",
            "text": "Beginner"
        ],
        [
            "title": "Writing",
            "text": "Beginner"
        ]
    ]
    static let russian = [
        [
            "title": "Comprehension",
            "text": "Beginner"
        ],
        [
            "title": "Speaking",
            "text": "Beginner"
        ],
        [
            "title": "Writing",
            "text": "Beginner"
        ]
    ]
    static let otherSkills = [
        [
            "title": "Computer related skills",
            "text": "Making plates/motherboards,programming on Swift/Java/C , programming microcontrollers,diagnostic motherboards and PC, repairing Apple products, knowledge of Cisco - routing and switching, MySQL."
        ],
        [
            "title": "Driving License",
            "text": "Yes"
        ],
        [
            "title": "Category",
            "text": "B"
        ]
    ]
    // MARK: Additional details
    static let additionalDetails = " \tFrom the beginning of the month I started learning how to use programmatic UI in Swift because it is faster than storyboards. I'm providing link to GitHub with older basic projects where I use storyboards. However, I've done apps with location (in the repo /Clima), Firebase(in the repo /FlashChat) and cocoapods (SwiftyJSON, Alamofire) : \n \n https://github.com/KonstantinKostadinov/iOS-12 \n \n\tI've started another project with my godfather. He is building the Android version and I'm building the iOS version. First we made it with Firebase and because I have more time I started to learn node.js to build our own API with mysql connection.I'm applying the programmatic UI. For now I can paste links to repo with the old version of it (with storyboards).It is not finished but still has the main functionalities in the administrator side of the app - create other admin, add appointments and invoices. Some of the accounts in SearchUserController might not be working, because my godfather messed them up. \n \n https://github.com/KonstantinKostadinov/adminApp.git \n  username: probenaccount@gmail.com \n password: probenaccount  \n  \n\tI'm working on Instagram clone with Firebase so I can experience how real world app is being made. The app is written without the use of storyboard. You can make your own account (fake of course) to see how the app is handling for now. It is not the final version, I plan to make it with notifications soon. \n \n https://github.com/KonstantinKostadinov/InstagramClone.git \n \n\tCurrently I'm in Czech Republic on Erasmus Plus intern in Coca Cola. I will be back in Bulgaria around the first week of October. \n\tSince I'm a still a student and I have to go to all the laboratory exercises and some important lectures I wouldn't be able to work eight hours a day."
}
