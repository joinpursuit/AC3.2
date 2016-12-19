//
//  InstaCat.swift
//  AC3.2-InstaCats-2
//
//  Created by Louis Tur on 10/11/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

struct InstaCat {
    let name: String
    let catID: Int
    let instagramURL: URL
    
    init(name: String, id: Int, instagramURL: URL) {
        self.name = name
        self.catID = id
        self.instagramURL = instagramURL
    }
    
    public var description: String {
        return "Nice to me you, I'm \(self.name)"
    }
}
