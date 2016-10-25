//
//  Walk.swift
//  WalkOfFame
//
//  Created by Kadell on 10/18/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation

class Walk {

    let designer: String
    let location: String
    let description: String
    let sketchURL: URL
    
    init(designer: String, location: String, description: String, sketchURL: URL)
    {
        self.designer = designer
        self.location = location
        self.description = description
        self.sketchURL = sketchURL
    }
    
    convenience init?(withArray arr: [Any]) {
        if let design = arr[8] as? String,
        let descrip = arr[9] as? String,
        let loc = arr[10] as? String,
        let sketch = arr[11] as? String,
        let url = URL(string:sketch) {
            self.init(designer: design, location: loc, description: descrip, sketchURL: url)
        }
        else {
            return nil
        }
    }
}

