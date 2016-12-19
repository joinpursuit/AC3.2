//
//  GiphyTableViewController.swift
//  GiphyUrlProject
//
//  Created by Kadell on 10/26/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class GiphyTableViewController: UITableViewController {
    
    var giphys: [Giphy] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GiphyFactory.getUrl(apiEndPoint: "http://api.giphy.com/v1/gifs/search?q=dolphin&api_key=dc6zaTOxFJmzC" ){ (data: Data?) in
            if data != nil {
                if let new = Giphy.eachGiphy(data: data!) {
                    self.giphys = new
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }

            }
        }
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
        return self.giphys.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Giphy Cell", for: indexPath)
        
        
        cell.textLabel?.text = giphys[indexPath.row].urlWebsite
        cell.detailTextLabel?.text = giphys[indexPath.row].slug
        
        GiphyFactory.getUrl (apiEndPoint: giphys[indexPath.row].url ) { (data: Data?) in
            if let new = data {
                cell.imageView?.image = UIImage(data: new)
           
            DispatchQueue.main.async {
                cell.imageView?.image = UIImage(data: new)
                cell.setNeedsLayout()
            }
            }
        }
        return cell
    }
   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedGiphy = giphys[indexPath.row]
        performSegue(withIdentifier: "detailSegue", sender: selectedGiphy)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue", let oneOfUs = sender as? Giphy {
            let giphyController = segue.destination as! ViewController
            giphyController.giphys = oneOfUs
            
        }
    }
    

    
}
