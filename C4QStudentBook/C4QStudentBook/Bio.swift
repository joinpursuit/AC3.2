//
//  Bio.swift
//  C4QStudentBook
//
//  Created by Kadell on 9/30/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation


class Bio {
    
    let firstName: String
    let lastName: String
    let email: String
    let imageName: String
    
    init(bioDict: [String: Any]) {
        if let fullName = bioDict["fullName"] as? String, let emailString = bioDict["email"] as? String, let imageNameString = bioDict["imageName"] as? String {
            self.email = emailString
            self.imageName = imageNameString
            
            let fullNameArr = fullName.components(separatedBy: " ")
            if let fn = fullNameArr.first {
                firstName = fn
            } else {
                firstName = ""
            }
            if let ln = fullNameArr.last {
                lastName = ln
            } else {
                lastName = ""
            }
        } else {
            self.firstName = "N/A"
            self.lastName = "N/A"
            self.email = "N/A"
            self.imageName = "c4q_logo"
        }
    }
}
