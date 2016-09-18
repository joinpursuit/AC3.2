//
//  NCardMontyViewController.swift
//  FirstApp
//
//  Created by Kadell on 9/14/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class NCardMontyViewController: UIViewController {
    //        var label: UILabel! = nil
    //        let titles = ["A", "B", "C"]
    //
    //        // change amount of cards to titles array count
    //        var gameEngine: MontyEngine! = nil
    //
    //        //    let gameEngine = MontyEngine(amountOfCards: 3)
    //
    //
    //        override func viewDidLoad() {
    //            super.viewDidLoad()
    //            gameEngine = MontyEngine(amountOfCards: titles.count)
    //            gameEngine!.setUpCards()
    //            setupLabel()
    //            for (index, title) in titles.enumerate() {
    //                setupButton(title, tag: index)
    //            }
    //
    //            //        for i in 0...2 {
    //            //            setupButton(titles[i], tag: i)
    //            //        }
    //        }
    //
    //        func setupButton(title: String, tag: Int) {
    //            let xValue = tag * 75
    //            let frame = CGRect(x: xValue, y: 75, width: 75, height: 60)
    //            let button = UIButton(frame: frame)
    //            button.backgroundColor = UIColor.lightGrayColor()
    //            button.setTitle(title, forState: .Normal)
    //            button.tag = tag
    //            button.addTarget(self, action: #selector(handleButtonTapped), forControlEvents: .TouchUpInside)
    //            view.addSubview(button)
    //        }
    //
    //        func handleButtonTapped(button: UIButton) {
    //            //        if let titleButton = button.currentTitle {
    //            //            print(titleButton, button.tag)
    //            //            label.text = titleButton
    //            //        }
    //            if gameEngine.checkCards(button.tag) {
    //                label.text = "WINNER"
    //                button.backgroundColor = UIColor.greenColor()
    //                gameEngine.setUpCards()
    //
    //                // create a backgound thread
    //                let qualityOfServiceClass = QOS_CLASS_BACKGROUND
    //                let backgroundQueue = dispatch_get_global_queue(qualityOfServiceClass, 0)
    //                dispatch_async(backgroundQueue, {
    //                    // inside the background thread
    //                    NSThread.sleepForTimeInterval(1)
    //                    // go back out to the main thread
    //                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
    //                        // we're in the main thread
    //                        self.resetAllButtonColor()
    //                    })
    //                })
    //            } else {
    //                label.text = "Try Again"
    //                button.backgroundColor = UIColor.redColor()
    //            }
    //        }
    //
    //
    //        func resetAllButtonColor() {
    //            for v in view.subviews {
    //                if let button = v as? UIButton {
    //                    button.backgroundColor = UIColor.lightGrayColor()
    //                }
    //            }
    //        }
    //
    //        func setupLabel() {
    //            let rect = CGRect(x: 175, y: 20, width: 150, height: 50)
    //            label = UILabel(frame: rect)
    //            label.text = "Let's Play"
    //            view.addSubview(label)
    //        }
    //
    //
    //}
    //  Name of the Label
    
    var labelMessage: UILabel!
    
    var gameEngine = MontyEngine(amountOfCards: 3)
    // var engine: MontyEngine
    //@IBOutlet weak var labelMessage2: UILabel!
    
    
    //    required init?(coder aDecoder: NSCoder) {
    //        self.numCards = 5
    //        self.engine = MontyEngine(amountOfCards: self.numCards)
    //        super.init(coder: aDecoder)
    //    }
    //
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allButtons()
        setUpLabel()
        
        
        //        let button = UIButton(frame: rect)
        //        button.tag = 1
        //        button.backgroundColor = UIColor.blueColor()
        //        button.setTitle("A", forState: UIControlState.Normal)
        //
        //        // this line is verbatim if your tap handler is named buttonTapped
        //        button.addTarget(self, action: #selector(buttonTapped), forControlEvents: .TouchUpInside)
        //
        //        // add it to the view hierarchy
        //        self.view.addSubview(button)
        //
        //        //        labelMessage.text = "Lets Play a Game"
        //        //        gameEngine.setUpCards()
        //        //
        //        let button1 = UIButton(frame: rect1)
        //        button1.tag = 2
        //        button1.backgroundColor = UIColor.blueColor()
        //        button1.setTitle("B", forState: UIControlState.Normal)
        //                button1.addTarget(self, action: #selector(buttonTapped), forControlEvents: .TouchUpInside)
        //
        //
        //        self.view.addSubview(button1)
    }
    
    func setUpLabel() {
        let rect = CGRect(x: 60, y: 80, width: 150, height: 40)
        labelMessage = UILabel(frame: rect)
        labelMessage.text = "Lets play"
        view.addSubview(labelMessage)
        
    }
    
    func allButtons() {
        var xcoord = 20
        var tag = 1
        
        
        for _ in 0..<gameEngine.numCards{
            let rect = CGRect(
                origin: CGPoint(x: xcoord, y: 40),
                size: CGSize(width: 60, height: 40)
            )
            
            
            let button = UIButton(frame: rect)
            button.tag = tag
            
            button.backgroundColor = UIColor.lightGray
            button.setTitle( "\(tag)" , for: UIControlState())
            
            xcoord += 65
            tag += 1
            
            // this line is verbatim if your tap handler is named buttonTapped
            button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            
            // add it to the view hierarchy
            self.view.addSubview(button)
        }
        
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

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */



