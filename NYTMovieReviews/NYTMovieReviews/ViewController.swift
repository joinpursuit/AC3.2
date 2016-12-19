//
//  ViewController.swift
//  NYTMovieReviews
//
//  Created by Kadell on 11/2/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var CriticsTableView: UITableView!
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var allCritics: [Movies] = []
    var allReviews: [Review] = []
    
    let cellIdentifier = "critics cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIRequestManager.manager.getMovies(endPoint: "https://api.nytimes.com/svc/movies/v2/critics/all.json?api-key=12cad604bf9f4e179e59464f10aeb6d2" )
        {( data: Data?) in
            
            if let validData = data {
                self.allCritics = Movies.eachCritic(data: validData)!
            }
            DispatchQueue.main.async {
                self.CriticsTableView.reloadData()
            }
            
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.allCritics.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier , for: indexPath)
        let path = allCritics[indexPath.row]
        
        cell.textLabel?.text = path.criticName
        
        cell.imageView?.image = nil
        
        if path.imageUrl != nil {
            APIRequestManager.manager.getMovies(endPoint: path.imageUrl!) {
                (data: Data?) in
                if let validData = data,
                    let validImage = UIImage(data: validData) {
                    DispatchQueue.main.async{
                        cell.imageView?.image = validImage
                        cell.setNeedsLayout()
                    }}
            }
        }
        
        return cell
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    //Mark - UICollectionViewDataSource Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allReviews.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! UICollectionViewCell
        let review = allReviews[indexPath.row]
        cell.movieTitleLabel.text = review.movie
        
        if let existingImage = review.image {
            APIRequestManager.manager.getData(endpoint: (existingImage.link)) { (data: Data?) in
                if  let validData = data,
                    let validImage = UIImage(data: validData) {
                    DispatchQueue.main.async {
                        cell.reviewImage.image = validImage
                        cell.reviewImage.isHidden = false
                        cell.setNeedsLayout()
                    }
                }
            }
        } else {
            cell.reviewImage.isHidden = true
        }
        
        cell.movieTitleLabel.isHidden = !cell.reviewImage.isHidden
        
        return cell
    }
}
    
    
    
    



