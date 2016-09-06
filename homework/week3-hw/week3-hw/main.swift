//
//  main.swift
//  echo
//
//  Created by Ilmira Estil on 9/2/16.
//  Copyright © 2016 Ilmira Estil. All rights reserved.
//

import Foundation



// what do we need this enum for?? >> type safety? if mispell strings in functions or switch statements
/********** THE ENUMS *****************/
///////////////////////////////////////
enum Command: String {
    case Help = "help"
    case Echo = "echo"
    case Number = "number"
    case MyFilter = "myFilter"
    case Play = "play"
    case Math = "math"
    case PlayMath = "playMath"
}

enum mathOps: String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
}


/********** COMMANDS **************/
////////////////////////////////////
func help() {
    print("Hola!  Commands available: play, echo, number, math, Filters: myFilter, evenNums")
}

func echo(s: String) {
    print("\(s) \(s) \(s) \(s) \(s) \(s)...")
}

func number(s: String) {
    if let num = Int(s){
        print("This \(num) is officialy type Int")
    }
}

/** Filter and Map Functions **/ //LSKDMFLKSMDFLSDKMFLKSMDFLKSMDFLKMSDKLFMLSDKM

//MAPS
//func myMap<T,U>(items: [T], f: (T) -> (U) -> [U] {}
//string -> ints

func mapToInt(inputStr: String) -> [Int] {
    var output = [Int]()
    let arr = inputStr.componentsSeparatedByString(",")
    for i in arr {
        output.append(Int(i)!)
    }
    print(output)
    return(output)
}

//FILTERS
func myFilter(inputArray: String, filter: (Int) -> Bool) -> [Int] {
    let array = mapToInt(inputArray)
    var filtered = [Int]()
    for i in array {
        if filter(i) == true { //filter closure on i
            filtered.append(i)
        }
    }
    print(filtered)
    return filtered
}


func evenNums(num: Int) -> Bool {
    return num % 2 == 0
}


//MATH FUNCS
func math(x: String, opString: String, y: String) -> Double { //math 3 + 2
    
    let a = Double(x)!
    let b = Double(y)!
    switch opString {
    case "+":
        print("\(a) + \(b) = \(a + b)")
        return a + b
    case "-":
        print("\(a) - \(b) = \(a - b)")
        return a - b
    case "*":
        print("\(a) * \(b) = \(a * b)")
        return a * b
    case "/":
        print("\(a) / \(b) = \(a / b)")
        return a / b
    default:
        print("Unknown operator")
        return a + b
        //return {x, y in x / y } // unable to infer closure return type in current context
    }
}

func mathStuffFactory(opString: String) -> (Int, Int) -> Int {
    switch opString {
    case "+":
        return {x, y in x + y }
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
}

// when i call ? it needs to randomly select one of these closure functions in the math function

//GAME STUFF
func randomIntBetween(low: Int, high: Int) -> Int {
    let range = high - (low - 1)
    return (Int(arc4random()) % range) + (low - 1)
}

/** math game **/

//mathFunc(a,b)


func playMath() -> Int {
    let operants = ["+", "-", "/", "*"] //use enums instead???
    
    let randomIndex = randomIntBetween(1, high: 4)
    let randomOperant = operants[randomIndex]
    let mathFunc = mathStuffFactory(randomOperant)
    let a = randomIntBetween(1, high: 20)
    let b = randomIntBetween(1, high: 20)
    let guessCheck = mathFunc(a,b)
    var check = false
    
    print("\(a) ? \(b) = \(mathFunc(a,b))")
    print("Choose the proper operant:")
    
    //compare user response to computer (guessCheck)
    while check == false {
        if let response = readLine(stripNewline: true) {
            let function = mathStuffFactory(response) //choose the prop closure in func
            let userResponse = function(a, b)
            if userResponse == guessCheck {
                print("Correct")
                check = true
            } else if response == "exit" {
                break
            } else {
                print("Try again :)")
            }
        }
    }
    return mathFunc(a, b)
}


func play(s: String) {
    if s == "game" {
        print("Guess a number between 1-5")
        var guess = Int(readLine(stripNewline: true)!)
        
        let answer = randomIntBetween(1, high: 5)
        var count = 0 // 3 tries only?
        var check = true
        while check {
            if guess == answer {
                // input another number from user, then compare to random number and print if correct --> print too low or too high
                print("OMG! YOU'RE PSYCHIC!")
                check = false
            } else if guess < answer && count < 4 {
                print("You're too low!")
                count+=1
                guess = Int(readLine(stripNewline: true)!)
            } else if guess > answer && count < 4 {
                print("You're too high!")
                count+=1
                guess = Int(readLine(stripNewline: true)!)
            } else if guess == nil {
                print("Enter a whole number!")
                guess = Int(readLine(stripNewline: true)!)
                count+=1
            }
            else {
                print("The answer was \(answer), better luck next time! :)")
                break
            }
        }
    }
}


/////////////////////////////////////////////////////////
/******** MAIN FUNCTION **************/
///////////////////////////////////////

func processCommand(command: [String]) {
    if let userCommand = Command(rawValue: command[0]) { // math 5 + 3
        switch userCommand {
        case .Help:
            help()
        case .Echo:
            echo(command[1])
        case .Number:
            number(command[1])
        case .MyFilter:
            myFilter(command[1], filter: evenNums) //filter even
        case .Play:
            play(command[1])
        case .PlayMath:
            playMath()
        case .Math:
            math(command[1], opString: command[2], y: command[3])
        }
    }
    
}

/******** MAIN **************/


while true {
    print("Type something, please: ", terminator: "")
    if let response = readLine(stripNewline: true) {
        //exit condition
        if response == "exit" {
            break
        }
        
        let command = response.componentsSeparatedByString(" ") //returns an array
        processCommand(command)
        
        /*
         if command[0] == "help" {
         processCommand(command)
         print("We need at least a command AND an argument")
         } else if command.count < 2 && command[0] != "help" {
         print("Retype!  We need at least a command and an argument")
         continue
         } else {
         processCommand(command) //command is a [String] here --> funcs above
         }
         */
        
    }
    else {
        print("You gotta enter something")
    }
}

