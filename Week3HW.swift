//
//  main.swift
//  week3 HW
//
//  Created by Amber Spadafora on 9/4/16.
//  Copyright © 2016 Amber Spadafora. All rights reserved.
//

import Foundation

enum Operators:String {
    case Plus = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
    case Game = "?"
}

func add(x: Double, y: Double) -> Double {
    return x + y
}

func subtract(x: Double, y: Double) -> Double {
    return x - y
}

func multy(x: Double, y: Double) -> Double {
    return x * y
}

func div(x: Double, y: Double) -> Double {
    return Double(x) / Double(y)
}


func randomGame(a: Double, b: Double) {
    
    let allowedChars = "+-/*"
    var randomString = ""
    
    for _ in (0..<1) {
        let randomNum = Int(arc4random_uniform(4))
        //print(randomNum)
        let newCharacter = allowedChars[allowedChars.startIndex.advancedBy(randomNum)]
        randomString += String(newCharacter)
    }
    //print(randomString)
    
    var randooo = [String]()
    randooo.append(randomString)
    //print(randooo)
    
    if let x = Operators(rawValue: randooo[0]) {
        //print(x)
        switch x {
        case .Plus:
            print("\(a) ? \(b) = \(add(a, y: b))")
            while true {
                if let answer = readLine(stripNewline: true) {
                    if answer == "+" {
                        print("You are correct")
                        break
                    } else {
                        print("Try again")
                    }
                }
            }
        case .Subtract:
            print("\(a) ? \(b) = \(subtract(a, y: b))")
            while true {
                if let answer = readLine(stripNewline: true) {
                    if answer == "-" {
                        print("You are correct")
                        break
                    } else {
                        print("Try again")
                    }
                }
            }
        case .Multiply:
            print("\(a) ? \(b) = \(multy(a, y: b))")
            while true {
                if let answer = readLine(stripNewline: true) {
                    if answer == "*" {
                        print("You are correct")
                        break
                    } else {
                        print("Try again")
                    }
                }
            }
        case .Divide:
            print("\(a) ? \(b) = \(div(a, y: b))")
            while true {
                if let answer = readLine(stripNewline: true) {
                    if answer == "/" {
                        print("You are correct")
                        break
                    } else {
                        print("Try again")
                    }
                }
            }
        default:
            print("Try again")
        }
    }
}

//randomGame(6, b: 3)



func calc (responseArray: [String]) {
    var returnedAmt = 0.0
    if responseArray.count < 2 {
       print("Please enter an expression (example: 5 + 3)")
    } else if responseArray.count > 3 {
        print("Please enter a simple expression with two numbers and an operator (example: 5 + 2)")
    } else {
            if let usersExpression = Operators(rawValue: responseArray[1]) {
                switch usersExpression {
                case .Plus:
                    if let a = Double(responseArray[0]), b = Double(responseArray[2]) {
                        returnedAmt = add(a, y: b)
                        print("\(a) +  \(b) = \(returnedAmt)")
                    }
                case .Subtract:
                    if let a = Double(responseArray[0]), b = Double(responseArray[2]) {
                        returnedAmt = subtract(a, y: b)
                    }
                    print("\(responseArray[0]) -  \(responseArray[2]) = \(returnedAmt)")
                case .Multiply:
                    if let a = Double(responseArray[0]), b = Double(responseArray[2]) {
                        returnedAmt = multy(a, y: b)
                    }
                    print("\(responseArray[0]) *  \(responseArray[2]) = \(returnedAmt)")
                case .Divide:
                    if let a = Double(responseArray[0]), b = Double(responseArray[2]) {
                        returnedAmt = div(a, y: b)
                    }
                    print("\(responseArray[0]) /  \(responseArray[2]) = \(returnedAmt)")
                case .Game:
                    if let a = Double(responseArray[0]), b = Double(responseArray[2]) {
                        randomGame(a, b: b)
                    }
            }
        }
    }
}

print("Welcome to the simple calculator. You can find the result to simple calculations such as 7 + 3 or 4 / 2. If you want to play a game enter an expression but use \("?") as the operator")

while true {
    if let response = readLine(stripNewline: true) {
        if response == "exit" {
        break
    }
        var arrOfResponse = response.componentsSeparatedByString(" ")
        if arrOfResponse.count < 3 {
            print("Please enter a valid expression (example: 5 + 3)")
        }
        calc(arrOfResponse)
    } 
}




//enum Oper:String {
//    case Add = "+"
//    case Subtract = "-"
//    case Multy = "*"
//    case Div = "/"
//}
//
//
//let allowedChars = "+-/*"
//let allowedCharsCount = UInt32(allowedChars.characters.count)
//var randomString = ""
//
//for _ in (0..<1) {
//    let randomNum = Int(arc4random_uniform(allowedCharsCount))
//    print(randomNum)
//    let newCharacter = allowedChars[allowedChars.startIndex.advancedBy(randomNum)]
//    randomString += String(newCharacter)
//}
////return randomString


