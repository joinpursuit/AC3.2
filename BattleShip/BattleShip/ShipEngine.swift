//
//  ShipEngine.swift
//  BattleShip
//
//  Created by Kadell on 9/17/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation


class ShipEngine{
    
    let numCards: Int
    let shipSize = [5,4,3,3,2]
    
    
    
    init(numCards:Int){
        self.numCards = numCards
        setupCards()
    }
    
    fileprivate enum State{
        case hit
        case miss
    }
    
    
    private  var cards = [State]()
    
    func move() {
    
    }
    
    func hittableCards() {
        
            cards[Int(arc4random_uniform(UInt32(numCards)))] = .hit
        
    }
    
    func setupCards(){
        cards = Array(repeating: .miss, count: numCards)
        
        for ship in shipSize{
            for _ in 0..<ship {
                hittableCards()
            }
        }
        
    }
    
    func checkCard(_ cardIn: Int) -> Bool{
        assert(cardIn < cards.count)  //helps with debugging
        return cards[cardIn] == .hit
    }
}
