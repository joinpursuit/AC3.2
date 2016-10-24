//
//  Walk.swift
//  WalkOfFame
//
//  Created by Erica Y Stevens on 10/18/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import Foundation

class Walk {
    let designer: String
    let location: String
    let description: String
    let sketchURL: URL
    
    init(designer: String, location: String, description: String, sketchURL: URL) {
        self.designer = designer
        self.location = location
        self.description = description
        self.sketchURL = sketchURL
    }
    
    convenience init?(withArray arr: [Any]) {
        if let designer = arr[8] as? String,
            let description = arr[9] as? String,
            let location = arr[10] as? String,
            let sketchURL = arr[11] as? String,
            let url = URL(string: sketchURL) {
                self.init(designer: designer, location: location, description: description, sketchURL: url)
            }
            else {
                return nil
            }
        }
    
//    convenience init (withDict dict: [String:Any]) {
//        
//    }
}
