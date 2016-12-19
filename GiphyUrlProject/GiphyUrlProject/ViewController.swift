//
//  ViewController.swift
//  GiphyUrlProject
//
//  Created by Kadell on 10/26/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var giphys: Giphy?
    
    @IBOutlet weak var giphyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let detail = giphys {
            
            guard let imageURL = URL(string: detail.url) else { return }
            let imageData = try! Data(contentsOf: imageURL)
            giphyImage.image = UIImage(data: imageData)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

