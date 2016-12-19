//
//  AppDelegate.swift
//  CocoaPods
//
//  Created by Kadell on 11/29/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        Alamofire.request("http://randomuser.me/api").responseJSON{(response) in
            print("\(response.request)")
            print("\(response.response)")
            print("\(response.result)")
            
            if let json = response.result.value {
                print("JSON:\(json)")
            }
        }
        
//        //Validating A Request automatically
//        Alamofire.request("https://randomuser.me/api").validate().responseJSON{(response) in
//            print("\(response.request)")
//            print("\(response.response)")
//            print("\(response.result)")
//            
//            if let json = response.result.value {
//                print("JSON:\(json)")
//            }
//        }
//      
        Alamofire.request("https://randomuser.me/api").validate().responseJSON { (response) in
            
            if let rawJson = response.result.value {
                let json = JSON(rawJson)
                let userDict = json["results"][0]
                
                if let firstName = userDict["name"]["first"].string,
                    let lastName = userDict["name"]["last"].string,
                    let city = userDict["location"]["city"].string,
                    let state = userDict["location"]["state"].string,
                    let username = userDict["login"]["username"].string,
                    let emailAddress = userDict["email"].string,
                    let id = userDict["id"]["value"].string,
                    let thumbnailUrl = userDict["picture"]["thumbnail"].string {
                    
                    let myUser = User(firstName: firstName, lastName: lastName, city: city, state: state, username: username, emailAddress: emailAddress, id: id, thumbnailURL: thumbnailUrl)
                    
                    dump(myUser)
                }
            }
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

