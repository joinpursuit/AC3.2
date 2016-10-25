//
//  Student.swift
//  C4QStudentBook
//
//  Created by Kadell on 9/30/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation

class Student
{
    let info:Bio
    let id: Int
    let github: String
    let linkedin: String
    var funFact: String
    
    init(studentDict: [String:Any]) {
        if let fact = studentDict["funFact"] as? String, let studentID = studentDict["studentID"] as? Int, let githubACC = studentDict["github"] as? String, let linkedinAcc = studentDict["linkedin"] as? String, let studentInfo = studentDict["info"] as? [String: Any] {

            self.funFact = fact
            self.id = studentID
            self.github = githubACC
            self.linkedin = linkedinAcc
            self.info = Bio(bioDict: studentInfo)
            
        }
        else {
            self.funFact = "N/A"
            self.id = 0
            self.github = "N/A"
            self.linkedin = "N/A"
            self.info = Bio(bioDict: ["":""])
        }
    }
    
    }
