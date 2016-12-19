//
//  Review.swift
//  NYTMovieReviews
//
//  Created by Kadell on 11/5/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation

internal struct Review {

    internal let imageUrl: String
    internal let websiteUrl: String
    
    static func getReview(data: Data) -> [Review]? {
        do{
            let reviewData: Any = try JSONSerialization.jsonObject(with: data, options: [])
            
        }
        catch{ print("******** Wrong I did not say that ************") }
    
    return nil
        
    }
}
