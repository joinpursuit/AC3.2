//
//  movies.swift
//  NYTMovieReviews
//
//  Created by Kadell on 11/2/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation



internal struct Movies {

    internal let criticName: String?
    internal let imageUrl: String?
    
    
    static func eachCritic(data: Data) -> [Movies]? {
        do{
            let criticsData: Any = try JSONSerialization.jsonObject(with: data, options: [])
            guard let criticsDataCasted = criticsData as? [String :Any ] else { return nil }
            guard let arrayOfCritics = criticsDataCasted["results"] as? [[String: Any]] else {return nil}
           
            var allCritics: [Movies] = []
            
            for dict in arrayOfCritics {
                guard let name = dict["sort_name"] as? String else {continue}
                
                let dataOfCritics = Movies(criticName: name, imageUrl: nil)
                allCritics.append(dataOfCritics)
                
                if let multi = dict["multimedia"] as? [String: Any], let resource = multi["resource"] as? [String: Any], let img = resource["src"] as? String {
                    
                
                let dataOfCritics = Movies(criticName: name, imageUrl: img)
                allCritics.append(dataOfCritics)
                    
                }
            }
            
            return allCritics
        }
           
        catch{print("***********An Error has occured****************")}
        
    return nil
    }


}
