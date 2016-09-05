//
//  main.swift
//  week3-hw

import Foundation

func calculator() {
    enum Command: String {
        case Plus = "+"
        case Subtract = "-"
        case Multiply = "*"
        case Division = "/"
        case Random = "?"
        case Modulo = "%"
        case Power = "^"
    }
    
    func randomOperation(a a: Double, b: Double) -> Double {
        let randNum = Int(arc4random_uniform(6))
        switch randNum {
        case 0:
            return a + b
        case 1:
            return a - b
        case 2:
            return a * b
        case 3:
            return a / b
        case 4:
            return a % b
        case 5:
            return pow(a, b)
        default:
            return a + b
        }
    }
    
    func mathStuffFactory(opString: Command) -> (Double, Double) -> Double {
        switch opString {
        case .Plus:
            return {x, y in x + y }
        case .Subtract:
            return {x, y in x - y }
        case .Multiply:
            return {x, y in x * y }
        case .Division:
            return {x, y in x / y }
        case .Random:
            return {x, y in randomOperation(a: x, b: y) }
        case .Modulo:
            return {x, y in x % y }
        case .Power:
            return {x, y in pow(x, y) }
        }
    }
    
    func randOpGame(a a: Double, b: Double, c: Double) {
        print("MYSTERY OPERATOR! \(c) is the answer but what was the operator?\n>>> ", terminator: "")
        var wrongAnswer = true
        while wrongAnswer {
            if let answer = readLine(stripNewline: true) {
                switch answer {
                case "+":
                    if a + b == c {
                        print("Correct!")
                        wrongAnswer = false
                    } else {
                        print("Wrong! Guess again: \n>>> ", terminator: "")
                    }
                case "-":
                    if a - b == c {
                        print("Correct!")
                        wrongAnswer = false
                    } else {
                        print("Wrong! Guess again: \n>>>", terminator: "")
                    }
                case "*":
                    if a * b == c {
                        print("Correct!")
                        wrongAnswer = false
                    } else {
                        print("Wrong! Guess again: \n>>>", terminator: "")
                    }
                case "/":
                    if a / b == c {
                        print("Correct!")
                        wrongAnswer = false
                    } else {
                        print("Wrong! Guess again: \n>>>", terminator: "")
                    }
                case "%":
                    if a % b == c {
                        print("Correct!")
                        wrongAnswer = false
                    } else {
                        print("Wrong! Guess again: \n>>>", terminator: "")
                    }
                case "^":
                    if pow(a,b) == c {
                        print("Correct!")
                        wrongAnswer = false
                    } else {
                        print("Wrong! Guess again: \n>>>", terminator: "")
                    }

                default:
                    print("That wasn't even a valid operator! Try again dummy: \n>>> ", terminator: "")
                }
            }
        }
    }
    
    func processCommand(c: [String]) {
        if c.count < 3 {
            print("I don't know what that was.\nPlease enter two operands seperated by an operator.")
        } else {
            if let userOperator = Command(rawValue: c[1]), userNum1 = Double(c[0]), userNum2 = Double(c[2]) {
                switch userOperator {
                case .Plus:
                    let plus = mathStuffFactory(userOperator)
                    print("\(userNum1) + \(userNum2) = \(plus(userNum1, userNum2))")
                case .Subtract:
                    let subtract = mathStuffFactory(userOperator)
                    print("\(userNum1) - \(userNum2) = \(subtract(userNum1, userNum2))")
                case .Multiply:
                    let multiply = mathStuffFactory(userOperator)
                    print("\(userNum1) * \(userNum2) = \(multiply(userNum1, userNum2))")
                case .Division:
                    let division = mathStuffFactory(userOperator)
                    print("\(userNum1) / \(userNum2) = \(division(userNum1, userNum2))")
                case .Random:
                    let random = mathStuffFactory(userOperator)
                    let theRandomAnswer = random(userNum1, userNum2)
                    randOpGame(a: userNum1, b: userNum2, c: theRandomAnswer)
                case .Modulo:
                    let modulo = mathStuffFactory(userOperator)
                    print("\(userNum1) % \(userNum2) = \(modulo(userNum1, userNum2))")
                case .Power:
                    let power = mathStuffFactory(userOperator)
                    print("\(userNum1) ^ \(userNum2) = \(power(userNum1, userNum2))")
                }
            } else if let _ = Double(c[0]), _ = Double(c[2]) {
                print("Unknown operand: \(c[1])")
            } else {
                print("Unknown operands. Operand must be a number")
            }
        }
     }
    print("This is a dumb, but fun, basic calculator game.\nType 'exit' to get back to the main menu.")
    while true {
        print("Enter a basic operation, seperated by spaces, with one of the following operators,\n +  -  *  / % ^ ?\n>>> ", terminator: "")
        if let response = readLine(stripNewline: true) {
            // exit condition
            if response == "exit" {
                break
            }
            let command = response.componentsSeparatedByString(" ")
            processCommand(command)
        }
        else {
            print("Unknown command")
        }
    }
}

func myFilter(inputArray: [Int], theFilter: (Int) -> Bool) -> [Int] {
    var filteredArray: [Int] = []
    for num in inputArray {
        if theFilter(num) {
            filteredArray.append(num)
        }
    }
    return filteredArray
}

func myMap(inputArray: [Int], theMap: (Int) -> (Int)) -> [Int] {
    var mappedArray: [Int] = []
    for num in inputArray {
        mappedArray.append(theMap(num))
    }
    return mappedArray
}

func mapFunc() {
    let ints = [4,2,6,3,4,6,2,8,5]
    print("Array of Ints: \(ints) \nThis is the array of Ints mapped to be double the value:\n... \(myMap(ints, theMap: { (a) -> (Int) in a * 2 })) ")
    print("Would you like to map your own array? 'yes' or 'no'")
    if let response = readLine(stripNewline: true) {
        switch response {
        case "yes":
            var userInts: [Int] = []
            var x: Int
            print("Cool, eneter a series of numbers sperated by spaces:\n>>> ")
            
            if let response = readLine(stripNewline: true) {
                let userString = response.componentsSeparatedByString(" ")
                
                for str in userString {
                    if let num = Int(str) {
                        userInts.append(num)
                    }
                }
            }
            print("Thanks. Now enter a number that you would like to multiply by:\n>>> ")
            if let response = readLine(stripNewline: true) {
                x = Int(response)!
                print("You entered the below array to be mapped:\n\(userInts)\nThis is your array multiplied by \(x)\n\(myMap(userInts, theMap: { (a) -> (Int) in a * x }))")
            }
        case "no":
            print("Suit yourself.")
        default:
            print("Unknown response, I'll that as a 'no'.")
        }
    }
}

func filterFunc () {
    let ints = [4,2,6,3,4,6,2,8,5]
    print("Array of Ints: \(ints) \nThis is the array of Ints filtered by those divisible by 3:\n... \(myFilter(ints, theFilter: { (a) -> Bool in a % 3 == 0 }))")
    print("Would you like to filter your own array? 'yes' or 'no'")
    if let response = readLine(stripNewline: true) {
        switch response {
        case "yes":
            var userInts: [Int] = []
            var x: Int
            print("Cool, eneter a series of numbers sperated by spaces:\n>>> ")
            
            if let response = readLine(stripNewline: true) {
                let userString = response.componentsSeparatedByString(" ")
                
                for str in userString {
                    if let num = Int(str) {
                        userInts.append(num)
                    }
                }
            }
            print("Thanks. Now enter a number that you would like to filter by multiples of:\n>>> ")
            if let response = readLine(stripNewline: true) {
                x = Int(response)!
                print("You entered the below array to be filtered:\n\(userInts)\nThis is your array filtered by multiples of \(x)\n\(myFilter(userInts, theFilter: { (a) -> Bool in a % x == 0 }))")
            }
        case "no":
            print("Suit yourself.")
        default:
            print("Unknown response, I'll that as a 'no'.")
        }
    }
}

while true {
    print("Welcome to the homework for week 3.\nType either 'calculator', 'map', filter' or 'exit' to quit:\n>>> ", terminator: "")
    
    if let response = readLine(stripNewline: true) {
        if response == "exit" {
            break
        }
        switch response{
        case "calculator":
            calculator()
        case "map":
            mapFunc()
        case "filter":
            filterFunc()
        default:
            print("Invalid command")
        }
        }
}
