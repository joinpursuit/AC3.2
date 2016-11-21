//
//  main.swift
//  week3-hw
<<<<<<< HEAD
import Foundation
//checks cases, then returns a function solving for the operator value
enum MathOperators: String {
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    
    func operate(x: Double,y: Double) -> Double{
        switch self {
        case .Add:
            return x + y
        case .Subtract:
            return x - y
        case .Divide:
            return x / y
        case .Multiply:
            return x * y
        }
    }
}
//this creates a random operator, and returns it along with the value of the input of the two numbers
func randomOperator(x: Double, y: Double) -> (Double, String){
    let operators = ["*", "+", "/", "-"]
    let randomOp = operators[Int(arc4random_uniform(4))]
    switch randomOp {
    case "+":
        return (x + y, "+")
    case "-":
        return (x - y, "-")
    case "/":
        return (x / y, "/")
    case "*":
        return (x * y, "*")
    default:
        return (0.0, "")
    }
}
enum filterOptions: String {
    case Odd = "odd"
    case Even = "even"
    case By3 = "by3"
    case By5 = "by5"
    
    func filterBy() -> ((Int) -> Bool) {
        switch self {
        case .Odd:
            return {a in a % 2 == 1}
        case .Even:
            return {a in a % 2 == 0}
        case .By3:
            return {a in a % 3 == 0}
        case .By5:
            return {a in a % 5 == 0}
        }
    }
}
func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    var newArr = [Int]()
    for i in inputArray {
        if filter(i) == true {
            newArr.append(i)
        }
    }
    return newArr
}
enum mappingOptions: String {
    case Double = "double"
    case Triple = "triple"
    case Half = "half"
    case Thirds = "thirds"
    
    func mapBy() -> ((Int) -> Int) {
        switch self {
        case .Double:
            return {a in a * 2}
        case .Triple:
            return {a in a * 3}
        case .Half:
            return {a in a / 2}
        case .Thirds:
            return {a in a / 3}
        }
    }
}
func myMap (inputArray: [Int], map: (Int) -> Int) -> [Int] {
    var outputArray = [Int]()
    for i in inputArray {
        outputArray.append(map(i))
    }
    return outputArray
}
var exit = false
while exit == false {
    print("Please input command: ")
    if let response = readLine() {
        let command = response.componentsSeparatedByString(" ")
        //this allows the machine to check quickly to see if it is shutting down or not.
        if command[0] == "exit" {
            exit = true
            //this check basic calculator functions
        } else if let calculator = MathOperators(rawValue: command[1]), x = Double(command[0]), y = Double(command[2]) where command.count == 3 {
            let value = calculator.operate(x, y: y)
            print("\(x) \(command[1]) \(y) = \(value)")
        }
        //this enters the random game for us
        if let x = Double(command[0]), y = Double(command[2]) where command.count == 3 && command[1] == "?" {
            let value = randomOperator(x, y: y)
            print("\(x) \(command[1]) \(y) = \(value.0)")
            var gamePlaying = true
            while gamePlaying {
                if let guess = readLine() {
                    if guess == value.1 {
                        sleep(1)
                        print("Correct!")
                        gamePlaying = false
                    } else {
                        sleep(1)
                        print("Guess Again!")
                    }
                }
            }
        }
        //this allows us to enable to filtering function
        if command[0] == "filter" {
            var inputArr = [Int]()
            //this determines the input array and the filtering factor. it checks to see if there is a filter factor
            if let x = filterOptions(rawValue: command[1]) {
                for i in command {
                    if let x = Int(i) {
                        inputArr.append(x)
                    }
                }
                print(myFilter(inputArr, filter: x.filterBy()))
            }
        }
        if command[0] == "map" {
            var inputArr = [Int]()
            //this determines the input array and the filtering factor. it checks to see if there is a filter factor
            if let x = mappingOptions(rawValue: command[1]) {
                for i in command {
                    if let x = Int(i) {
                        inputArr.append(x)
                    }
                }
                print(myMap(inputArr, map: x.mapBy()))
            }
        }
    }
}
=======

import Foundation


>>>>>>> 796ffbd8fd2a79714564930268e87a0d39fd1093
