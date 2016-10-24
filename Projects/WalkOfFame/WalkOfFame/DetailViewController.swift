//
//  DetailViewController.swift
//  WalkOfFame
//
//  Created by Erica Y Stevens on 10/23/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   
    @IBOutlet weak var designerDescriptionLabel: UILabel!
    var designerDescriptionString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designerDescriptionLabel.text = designerDescriptionString
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
