//
//  Giphy.swift
//  GiphyUrlProject
//
//  Created by Kadell on 10/26/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation


internal struct Giphy {

    internal let slug: String
    internal let url: String //for image
    internal let urlWebsite: String
    
    static func eachGiphy(data: Data) -> [Giphy]? {
        do {
            let giphyData: Any = try JSONSerialization.jsonObject(with: data, options: [])
            
            guard let giphyDataCasted = giphyData as? [String : Any] else {
                print("There was an error casting to \(giphyData)")
                return nil
            }
                guard let arrayOfGiphy = giphyDataCasted["data"] as? [[String: Any]] else {
                print("There was an error casting into \(giphyDataCasted)")
                return nil
            }
            print("**********************Users have been created: \(arrayOfGiphy)***************")
            
            var allGiphy: [Giphy] = []
            
            for dict in arrayOfGiphy {
                guard let slug: String = dict["slug"] as? String else { return nil}
                print("***********SLUG CREATED***********")
                guard let urlWebsiteOf: String = dict["source_tld"] as? String else {return nil}
                print("********* WEBSITE URL CREATED ********")
                guard let urlOfImage = dict["images"] as? [String: Any] else {return nil}
                print("********** URL LOADED ***********")
                guard let fixedUrl = urlOfImage["fixed_height_still"] as? [String: String] else {return nil }
                guard let urlOfFixedStill = fixedUrl["url"] else { return nil }
               
                
                let dataOfGiphys = Giphy(slug: slug, url: urlOfFixedStill, urlWebsite: urlWebsiteOf)
                allGiphy.append(dataOfGiphys)
            }
            
            return allGiphy
        }
        catch {
            print("Error Encountered: \(error)")
        }
        
    return nil
    }

}
