//
//  ViewController.swift
//  FirstApp
//
//  Created by Kadell on 9/12/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

//Class must have same name on the left side panel

class MontyViewController: UIViewController {
    
    
    
    
    //var cards: [State] = Array(count: 3 repeatedValue: .Miss)
    
    //Name of the Label
    @IBOutlet weak var labelMessage: UILabel!
    var gameEngine = MontyEngine(amountOfCards: 3)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        labelMessage.text = "Lets Play a Game"
        //        gameEngine.setUpCards()
        //
    }
    
    //Buttons are being called
    @IBAction func buttonTapped(_ sender: UIButton) {
        if let title = sender.currentTitle{
            labelMessage.text = "Pressed Button \(title) tag: \(sender.tag)"
            
            if gameEngine.checkCards(sender.tag - 1) {
                labelMessage.text = "Correct"
                gameEngine.setUpCards()
            }
            else {
                labelMessage.text = "Try again"
            }
            
        }
        
    }
    
}

