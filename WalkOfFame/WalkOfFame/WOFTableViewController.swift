//
//  WOFTableViewController.swift
//  WalkOfFame
//
//  Created by Kadell on 10/18/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class WOFTableViewController: UITableViewController {
    
    internal let wofTableViewCellIdentifier: String = "WalkOfFameIdentifier"
    internal let wofJSONFileName: String = "walk_of_fame.json"
    internal var walkOf: [Walk] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let instaCatsURL: URL = self.getResourceURL(from: wofJSONFileName),
            let instaCatData: Data = self.getData(from: instaCatsURL),
            let instaCatsAll: [Walk] = self.getInstaCats(from: instaCatData) else {
                return
        }
        
        self.walkOf = instaCatsAll

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.walkOf.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: wofTableViewCellIdentifier , for: indexPath)
        
        let wof = walkOf[indexPath.row]
//        cell.textLabel.text = wof.des
        
        
        
        return cell
    }
    
    
    //MARK: - Flow
    internal func getData(from url: URL) -> Data? {
        // 1. this is a simple handling of a function that can throw. In this case, the code makes for a very short function
        // but it can be much larger if we change how we want to handle errors.
        
        let fileData: Data? = try? Data(contentsOf: url)
        return fileData
        
    }
    
    
    
    internal func getResourceURL(from fileName: String) -> URL? {
        
        // 1. There are many ways of doing this parsing, we're going to practice String traversal
        guard let dotRange = fileName.rangeOfCharacter(from: CharacterSet.init(charactersIn: ".")) else {
            return nil
        }
        
        // 2. The upperbound of a range represents the position following the last position in the range, thus we can use it
        // to effectively "skip" the "." for the extension range
        let fileNameComponent: String = fileName.substring(to: dotRange.lowerBound)
        let fileExtenstionComponent: String = fileName.substring(from: dotRange.upperBound)
        
        // 3. Here is where Bundle.main comes into play
        let fileURL: URL? = Bundle.main.url(forResource: fileNameComponent, withExtension: fileExtenstionComponent)
        
        return fileURL
    }
    
    
    internal func getInstaCats(from jsonData: Data) -> [Walk]? {
        
        // 1. This time around we'll add a do-catch
        do {
            let instaCatJSONData: Any = try JSONSerialization.jsonObject(with: jsonData, options: [])
            
            if let dict = instaCatJSONData as? [String:[String:[String:String]]] {
                
                if let walkOfFameArray = dict["view"] {
                    for walk in walkOfFameArray {
                        if let wofID = walk["id"],
                            let name = walk["name"],
                            let instagram = walk["instagram"],
                            let catIDInt = Int(catID),
                            let instagramURL = URL(string: instagram)
                        {
                            let WOFData = Walk(name: name, id: catIDInt, instagramURL: instagramURL, description: nil)
                            walkOf.append(getData)
                        }
                    }
                }
                
            }
            

        }
        catch let error as NSError {
            // JSONSerialization doc specficially says an NSError is returned if JSONSerialization.jsonObject(with:options:) fails
            print("Error occurred while parsing data: \(error.localizedDescription)")
        }
        
        return  walkOf
    }
    


  
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
    

}
