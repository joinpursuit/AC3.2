//
//  MontyEngine.swift
//  FirstApp
//
//  Created by Kadell on 9/12/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation

class MontyEngine {
    
    fileprivate enum State {
        case hit
        case miss
    }
    
    let numCards: Int
    
    init(amountOfCards: Int) {
        self.numCards = amountOfCards
        setUpCards()
        
    }
    
    fileprivate var cards = [State]()
    
    func setUpCards() {
        cards = Array(repeating: .miss, count: numCards)
        cards[Int(arc4random_uniform(UInt32(numCards)))] = .hit
        
    }
    
    func checkCards(_ index: Int) -> Bool {
        //        if index < cards.count {
        assert(index < cards.count)
        return cards[index] == .hit
        //        }
        //        return false
    }
    
    //    private subscript(i: Int) -> State {
    //        get {
    //            return cards[i]
    //        }
    //    }
   
    
    
}
