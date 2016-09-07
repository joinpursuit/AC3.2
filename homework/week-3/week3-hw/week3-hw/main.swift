//
//  main.swift
//  week3-hw

import Foundation

enum Command:String {
  case Math = "math"
  case MyFilter = "filter"
}

enum Math: String {
  case Plus = "+"
  case Minus = "="
  case Times = "*"
  case Divide = "/"
  case Random = "?"
  
}

/**
 * Math Stuff Factory
 */
func math(m: String) {
  if m == "mathStuffFactory" {
    var mathing = true
    while mathing {
      print("Start mathing! +, -, *, /, ? allowed: ", terminator: "")
      if let userInput = readLine(stripNewline: true) {
        let mathInput = userInput.componentsSeparatedByString(" ")
        let a = mathInput[0]
        //Exit clause
        if a == "exit" {
          mathing = false
          break
        }
        let b = mathInput[2]
        //Check for numbers
        if Double(a) == nil || Double(b) == nil {
          print("Numbers please, this is math")
        } else {
          let x = Double(a)!
          let y = Double(b)!
          //Math switch
          if let op = Math(rawValue: mathInput[1]) {
            switch op {
            case .Plus:
              print("\(x) + \(y) = \(x + y)")
            case .Minus:
              print("\(x) - \(y) = \(x - y)")
            case .Times:
              print("\(x) * \(y) = \(x * y)")
            case .Divide:
              print("\(x) / \(y) = \(x / y)")
            case .Random:
              var mathQuiz = true
              var correct = ""
              let random = arc4random_uniform(4)
              switch random {
              case 0:
                print(x + y)
                correct = "+"
              case 1:
                print(x - y)
                correct = "-"
              case 2:
                print(x * y)
                correct = "*"
              case 3:
                print(x / y)
                correct = "/"
              default:
                break
              }
              while mathQuiz {
              if let userInput = readLine(stripNewline: true) {
                var guessInput = userInput.componentsSeparatedByString(" ")
                if guessInput[0] == correct {
                  print("Good job tough stuff!")
                  mathQuiz = false
                } else {
                  print("Do you even? or do you odd?")
                }
              }
              }
            }
          } else {
            print("Only +, -, *, /, ? allowed")
          }
        }
      }
    }
  }
}


let ints = [4,2,6,3,4,6,2,8,5]

func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
  return inputArray.filter { (a) -> Bool in
    a % 2 == 0
  }
}

/**
 * Process Custom Commands
 */
func processCommand(inputArray:[String]) {
  
  if let filter = Command(rawValue: inputArray[0]) where filter.rawValue == "filter" {
    print(myFilter(ints, filter: {(a) -> Bool in a % 2 == 0}))
  }
  
  else if let command = Command(rawValue: inputArray[0]) where inputArray.count > 1 {
    switch command {
    case .Math:
      math(inputArray[1])
    case .MyFilter:
      print(myFilter(ints, filter: {(a) -> Bool in a % 2 == 0}))
    }
  } else {
    print("Unknown command or requires at least one argument")
  }
}

/**
 * Run Input
 */
while true {
  print("Command me: ", terminator: "")
  if let response = readLine(stripNewline: true) {
    // exit condition
    if response == "quit" {
      break
    }
    let command = response.componentsSeparatedByString(" ")
    
    processCommand(command)
  }
  else {
    print("Wat...?")
  }
}

