//
//  GiphyFactory.swift
//  GiphyUrlProject
//
//  Created by Kadell on 10/26/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class GiphyFactory {

    static let manager: GiphyFactory = GiphyFactory()
    private init() {}
    
    
    
    
    class func getUrl(apiEndPoint: String, callback: @escaping ((Data?)-> Void)) {
    
        //turn url into URL object
        
        guard let url = URL(string: apiEndPoint ) else {return }
        
        //create session to handle networking
        
        let session = URLSession.init(configuration: .default)
        session.dataTask(with: url) { ( data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                print("*********Error!********")
            }
            guard let validData =  data else { return }
            callback(validData)
        }.resume()
    }
    
}
