//
//  APIRequestManager.swift
//  NYTMovieReviews
//
//  Created by Kadell on 11/2/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation

internal class APIRequestManager {
    
    static let manager: APIRequestManager = APIRequestManager()
    private init () {}
    
    func getMovies(endPoint: String, callback: @escaping(Data?) -> Void) {
        guard let myURL = URL(string: endPoint) else { return }
        let session = URLSession(configuration: URLSessionConfiguration.default)
        session.dataTask(with: myURL) { (data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                print("Error durring session: \(error)")
            }
            guard let validData = data else { return }
            callback(validData)
            }.resume()
    }    
    
}
