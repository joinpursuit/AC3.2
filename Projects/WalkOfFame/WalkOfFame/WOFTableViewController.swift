//
//  WOFTableViewController.swift
//  WalkOfFame
//
//  Created by Erica Y Stevens on 10/18/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class WOFTableViewController: UITableViewController {
    
    internal var walks: [Walk] = []
    internal let wofCellIdentifier: String = "WalkOfFameCell"
    internal let wofJSONFileName: String = "walk_of_fame.json"

    override func viewDidLoad() {
        
        super.viewDidLoad()

        guard let wofURL: URL = self.getResourceURL(from: wofJSONFileName),
            let wofData: Data = self.getData(from: wofURL),
            let wofAll: [Walk] = self.getWalkers(from: wofData as Data)
            else {
                print("Data Loading Failed")
                return
        }
        
        self.walks = wofAll
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return walks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: wofCellIdentifier, for: indexPath)

        cell.textLabel?.text = walks[indexPath.row].designer
        cell.detailTextLabel?.text = walks[indexPath.row].location
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! DetailViewController
        let cell = sender as! UITableViewCell
        if let indexPath = self.tableView.indexPath(for: cell) {
            let designer = walks[indexPath.row]
              vc.designerDescriptionString = designer.description
            vc.title = designer.designer
            
        }
    }
    

    // MARK: Data
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
        //The bundle is a class that represents our app and all the files/assests associated with it
        let fileURL: URL? = Bundle.main.url(forResource: fileNameComponent, withExtension: fileExtenstionComponent)
        
        return fileURL
    }
    
    internal func getData(from url: URL) -> Data? {
        
        // 1. this is a simple handling of a function that can throw. In this case, the code makes for a very short function
        // but it can be much larger if we change how we want to handle errors.
        let fileData: Data? = try? Data(contentsOf: url)
        return fileData
    }
    
    
    internal func getWalkers(from jsonData: Data) -> [Walk]? {
        
        var walks = [Walk]()
        //Do-catch
        do {
            let walkerJSONData: Any = try JSONSerialization.jsonObject(with: jsonData, options: [])
            
            //Cast from Any into a more suitable data structure & check for the "data" key
            if let walkerData = walkerJSONData as? [String:Any] {
                if let walkerDataArrays = walkerData["data"]  as? [[Any]] {
                    for el in walkerDataArrays{
                        if let w = Walk(withArray: el) {
                            walks.append(w)
                        }
                    }
                }
            }
        }
        catch let error as NSError {
            // JSONSerialization doc specficially says an NSError is returned if JSONSerialization.jsonObject(with:options:) fails
            print("Error occurred while parsing data: \(error.localizedDescription)")
        }
        print("Function Array Count \(walks.count)")
        return  walks
    }
    
}

