//
//  main.swift
<<<<<<< HEAD
//  week3HW
//
//  Created by Tong Lin on 9/5/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import Foundation

enum Command:String {
    case Cal = "cal"
    case MyFilter = "filter"
    case MyMap = "map"
}
enum Operations:String{
    case Addition = "+"
    case Subtraction = "-"
    case Multiplication = "*"
    case Division = "/"
    case Random = "?"
}
//return an random operator
func randomOP(first a: Double, second b: Double) -> Double?{
    let arrOfOP = ["+", "-", "*", "/"]
    let randomNum = Int(arc4random_uniform(3) + 0)
    switch arrOfOP[randomNum] {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        return a / b
    default:
        return nil
    }
}
//basic math function
func mathStuffFactory(opString: String) -> (Double, Double) -> Double? {
    func operands(x: Double, y: Double) -> Double?{
        if let operation = Operations(rawValue: opString){
            switch operation{
            case .Addition:
                return x + y
            case .Subtraction:
                return x - y
            case .Multiplication:
                return x * y
            case .Division:
                return x / y
            case .Random:
                return randomOP(first: x, second: y)
            }
        }
        return nil
    }
    return operands
}
//calculator
func cal(c: String){
    if c  == "math"{
        print(">>> ", terminator: "")
        while let input = readLine(stripNewline: true){
            if input == "Exit"{
                break
            }
            let equation = input.componentsSeparatedByString(" ")
            let answer = mathStuffFactory(equation[1])
            let solution = answer(Double(equation[0])!, Double(equation[2])!)
            if equation[1] == "?"{
                print(solution!)
                print(">>> ", terminator: "")
                if let inputOP = readLine(stripNewline: true){
                    if inputOP == "Exit"{
                        break
                    }
                    var test = mathStuffFactory(inputOP)
                    while test(Double(equation[0])!, Double(equation[2])!) != solution!{
                        print("Nope!")
                        print(">>> ", terminator: "")
                        if let inputOP = readLine(stripNewline: true){
                            if inputOP == "Exit"{
                                break
                            }
                            test = mathStuffFactory(inputOP)
                        }
                    }
                    print("Correct!")
                }
            }else{
                if solution == nil{
                    print("Unknown operator: \(equation[1])")
                }else{
                    print("\(input) = \(solution!)")
                }
            }
            print(">>> ", terminator: "")
        }
    }
}
//my filter function
func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    var temArr: [Int] = []
    for i in inputArray{
        if filter(i){
            temArr.append(i)
        }
    }
    return temArr
}
//filter command input control
func Filter(c: String) {
    if c  == "IntArray"{
        print("Enter your array here: ", terminator: "")
        while let inputArr = readLine(stripNewline: true){
            if inputArr == "Exit"{
                break
            }
            var intArray: [Int] = []
            for i in inputArr.componentsSeparatedByString(" "){
                if let k = Int(i){
                    intArray.append(k)
                }
            }
            print("Enter your filter number: ", terminator: "")
            if let inputNum = readLine(stripNewline: true){
                print(myFilter(intArray){ (a) -> Bool in a % Int(inputNum)! == 0})
            }
            intArray.removeAll()
            print("Enter your new array here: ", terminator: "")
        }
    }
}
//my maping function
func myMap(inputArray: [Int], OP: String, maping: Int) -> [Int] {
    var temArr: [Int] = []
    for i in inputArray{
        switch OP {
        case "+":
            temArr.append(i + maping)
        case "-":
            temArr.append(i - maping)
        case "*":
            temArr.append(i * maping)
        case "/":
            temArr.append(i / maping)
        case "%":
            temArr.append(i % maping)
        default:
            print("Unknow operator")
        }
    }
    return temArr
}
//Maping command input control
func Map(c: String){
    if c == "IntArray"{
        print("Enter your array here: ", terminator: "")
        while let inputArr = readLine(stripNewline: true){
            if inputArr == "Exit"{
                break
            }
            var intArray: [Int] = []
            for i in inputArr.componentsSeparatedByString(" "){
                if let k = Int(i){
                    intArray.append(k)
                }
            }
            print("Enter your maping number: ", terminator: "")
            if let inputNum = readLine(stripNewline: true){
                print("Enter your operator number: ", terminator: "")
                if let inputOP = readLine(stripNewline: true), let mapingNum = Int(inputNum){
                    print(myMap(intArray, OP: inputOP, maping: mapingNum))
                }
            }
            intArray.removeAll()
            print("Enter your new array here: ", terminator: "")
        }
    }
}
//command handle
func processCommand(arr:[String]) {
    if arr.count < 2 {
        print("We need at least one command and one argument")
    }
    if let command = Command(rawValue: arr[0]) {
        switch command {
        case .Cal:
            cal(arr[1])
        case .MyFilter:
            Filter(arr[1])
        case .MyMap:
            Map(arr[1])
        }
    }
    else {
        print("Unknown command")
    }
}
//main function
while true {
    print("Enter you command: ", terminator: "")
    if let response = readLine(stripNewline: true) {
        // exit condition
        if response == "exit" {
            break
        }
        let command = response.componentsSeparatedByString(" ")
        processCommand(command)
    }
    else {
        print("You gotta enter something")
    }
}
=======
//  week3-hw

import Foundation


>>>>>>> e6fed9bc33396c5729f254a05d04786d5bc0d0d9
