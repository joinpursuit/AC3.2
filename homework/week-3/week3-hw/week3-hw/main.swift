//
//  main.swift
//  week3-hw
//> Exhibit A. (mathStuffFactory)
//

import Foundation

enum Command: String {
//    case Play = "play"
    case GuessingGame = "guessingGame"
    case Math = "math"
    case MathGame = "mathGame"
    case Filter = "filter"
    case Map = "map"
}
//-----
func mathStuffFactory(opString: String) -> (x:Double, y:Double) -> Double {
    func mathVariables (x:Double, y:Double) -> Double {
        switch opString {
        case "+":
            return x + y
        case "-":
            return x - y
        case "*":
            return x * y
        case "/":
            return x / y
        default:
            return x + y
            //break
        }
    }
    return mathVariables
}

func mathCalculator (y:String) {
    while true{
        if let input = readLine(stripNewline: true){ //8 + 8
            if input == "exit" {
                break
            }
            let arrayOfIntsInput = input.componentsSeparatedByString(" ")
            if arrayOfIntsInput.count < 3 { //if fewer than two, will will go back to before
                print("We need at least two operands and an operator separated by space for calculation.")
            } else {
                let firstNum : Double? = Double(arrayOfIntsInput[0])
                let possibleOperator : String? = String(arrayOfIntsInput[1])
                let SecondNum : Double? = Double(arrayOfIntsInput[2])
                if firstNum == nil || possibleOperator == nil || SecondNum == nil {
                    print("Bad format")
                } else if let a = firstNum, b = SecondNum {
                    let operation = mathStuffFactory(arrayOfIntsInput[1])
                    print("\(a) \(arrayOfIntsInput[1]) \(b) = \(operation (x: a, y: b))")
                }
            }
            
        }
    }
}

func mathGame (y:String) {
    let array = ["+", "-", "*", "/"]
    let randomIndex = Int(arc4random_uniform(UInt32(array.count)))
    let mysteryOperation = array[randomIndex]
    let anotherOperation = mathStuffFactory(mysteryOperation)
    while true {
        let randomNum1 = Double(arc4random_uniform(100)+1)
        let randomNum2 = Double(arc4random_uniform(100)+1)
        print("\(randomNum1) ? \(randomNum2) = \(anotherOperation (x: randomNum1, y:randomNum2)), what is the missing operator?")
        if let inputOperation = readLine(stripNewline: true) {//(choose an operator among +, -, *, /, Example:) +
            if inputOperation == "exit"{
                break
            }
            if mysteryOperation == inputOperation{
                print("Correct! Do you want to play again, yes or no?")
                if let inputYesNo = readLine(stripNewline: true){ //(sample input) yes
                    if inputYesNo == "yes" {
                        mathGame("yes")
                    }else if inputYesNo == "no" {
                        break
                    }else{
                        print("It's a fun game! Say yes to continue!")
                    }
                }
            }else{
                print("Nope! Try Again on a different one!")
                mathGame("yes")
            }
        }
        if let input = readLine(stripNewline: true){
            if input == "exit" {
                break
            }
        }
    }
}
//----
func guessingGame (y: String) {
    let randomNum = Int(arc4random_uniform(100)+1)
    print("Guessing game! Please enter a number between 0 and 100!")
    while true{
        if let input = readLine(stripNewline: true), inputNum = Int(input) { //(sample input number to guess) 45
            if input == "exit" {
                break
            }
            if randomNum == inputNum{
                print("You win! Do you want to play again, yes or no?")
                if let inputYesNo = readLine(stripNewline: true){ //(sample input) yes
                    if inputYesNo == "yes" {
                        guessingGame("yes")
                    }else if inputYesNo == "no" {
                        break
                    }else{
                        print("It's a fun game! Say yes to continue!")
                    }
                }
            }else if randomNum < inputNum {
                print("Your number is too high!")
                continue
            }else if randomNum > inputNum {
                print("Your number is too low!")
                continue
            }else{
                print("It can not be determined!")
                continue
            }
        }
    }
}
//-----

//func play (y: String) {
//    print("Please enter one of the following: guessingGame or mathGame")
//    if let inputChoice = readLine(stripNewline: true){
//        if inputChoice == "guessingGame"{
//            guessingGame(y)
//        } else if inputChoice == "mathGame"{
//            mathGame(y)
//        } else {
//            print("Bad request!")
//        }
//    }
//}
//-----
func filter (x:Int) -> Bool {
    if x % 2 == 0{
        return true
    } else {
        return false
    }
}
func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    var outputArray:[Int] = []
    for i in inputArray{
        if filter(i) == true{
            outputArray.append(i)
        }else{
            continue
        }
    }
    return outputArray
}
func filterFun (y: String){
    print("Please enter odd or even.")
    while true{
        if let input = readLine(stripNewline: true){//(sample input) even
            if input == "exit" {
                break
            }
            if input == "even" || input == "odd" {
                print("Please enter the numbers seperated by a common.")
                if let inputOfInts = readLine(stripNewline: true){
                    let arrayOfIntsInput = inputOfInts.componentsSeparatedByString(",")
                    var arrayOfIntsInInts:[Int] = []
                    for i in arrayOfIntsInput{
                        if let j = Int(i){
                            arrayOfIntsInInts.append(j)
                        }
                    }
                    if input == "even" || input == "odd" {
                        if input == "even" {
                            print(myFilter(arrayOfIntsInInts){ (x) -> Bool in
                                x % 2 == 0
                                }, terminator: " ")
                        } else if input == "odd" {
                            print(myFilter(arrayOfIntsInInts){ (x) -> Bool in
                                x % 2 == 1
                                }, terminator: " ")
                        }
                        print("Do you want to filter more Ints, yes or no?")
                        if let inputYesNo = readLine(stripNewline: true){ //(sample input) yes
                            if inputYesNo == "yes" {
                                filterFun("yes")
                            }else if inputYesNo == "no" {
                                break
                            }else{
                                print("Bad Request!")
                            }
                        }
                    }
                }
            }
            else {
                print("Bad request")
            }
        }
    }
}
//-----
func map (x:Double) -> Double {
    return x * 2
}
func myMap(inputArray: [Double], map: (Double) -> Double) -> [Double] {
    var outputArray:[Double] = []
    for i in inputArray{
        outputArray.append(map(i))
    }
    return outputArray
}
func mapFun (y: String){
    print("How do you want to map it? Choose one of the following: add, subtract, multiply or divide")
    while true{
        if let input = readLine(stripNewline: true){ //(sample input) multiply
            if input == "exit" {
                break
            }
            if input == "add" || input == "subtract" || input == "multiply" || input == "divide" {
                print("What is the parameter do you want to \(input)? Please enter a integer.")
                if let inputParameter = readLine(stripNewline: true), inputNum = Double(inputParameter) { //(sample input) 10
                    print("Please input the numbers seperated by a comma below. The numbers will be \(input) by \(inputParameter)")
                    if let inputInts = readLine(stripNewline: true){ //(sample input) 1,2,3,4,5,6,7,8
                        let arrayOfIntsInput = inputInts.componentsSeparatedByString(",")
                        var arrayOfIntsInInts:[Double] = []
                        for i in arrayOfIntsInput{
                            if let j = Double(i){
                                arrayOfIntsInInts.append(j)
                            }
                        }
                        if input == "add" {
                            print(myMap(arrayOfIntsInInts){ (x) -> Double in
                                return x + inputNum
                                })
                        }else if input == "subtract" {
                            print(myMap(arrayOfIntsInInts){ (x) -> Double in
                                return x - inputNum
                                })
                        }else if input == "multiply" {
                            print(myMap(arrayOfIntsInInts){ (x) -> Double in
                                return x * inputNum
                                })
                        }else if input == "divide" {
                            print(myMap(arrayOfIntsInInts){ (x) -> Double in
                                return x / inputNum
                                })
                        }
                    } else {
                        print("Bad Input!")
                    }
                }else{
                    print("Bad parameter, please enter a integer!")
                }
            }else{
                print("Bad request! Please enter one of the following: add, subtract, multiply or divde")
            }
        }
    }
}
//-----
func processCommand (a: [String]) {
    if let command = Command(rawValue: a[0]){
        switch command{
        case .GuessingGame:
            guessingGame(a[0])
            //-a guessing game
            //(the console will show)Guessing game! Please enter a number between 0 and 100!
            //(enter a number between 0 to 100, sample) 50
            //(the console will show: you win, the number is too low or the number is too high. for example:) the number is too high!
            //(try again with another number and enter) 56
            //(after a few tries, the console might show: you win! Do you want to play again, yes or no? If input "yes", it will give you another number to guess. If "no", it will return to the main directory. Sample input) yes
            
            //case .Play:
            //play(a[0])
            //-(the console allow you to select: guessingGame or mathGame)
            //(sample input)guessingGame
            
        case .Math:
            mathCalculator(a[0])
            //-does simple calculations like addition, subtraction, multiplication, and division
            //(sample input for the console) math
            //(enter the following) 8 + 8
            //(the console will show result) 16
            
        case .MathGame:
            mathGame(a[0])
            //-a math game that generates a random operator with two operands
            //(sample input for the console) mathGame
            //(console will show something similar to this:) 42.0 ? 35.0 = 7.0
            //(Input answer: +, -, * or /) -
            //((after putting a correct input, the console might show: you win! Do you want to play again, yes or no? If input "yes", it will give you another number to guess. If "no", it will return to the main directory. Sample input) yes
            
        case .Filter:
            filterFun(a[0])
            //-filter out the even or odd numbers
            //(sample input for console) filter
            //(the console will show) Please enter odd or even.
            //(please enter odd or even, for example:) even
            //(the console will show) Please enter the numbers seperated by a common.
            //(enter the following) 1,2,3,4,5,6,7,8,9,10
            //(the console will show result) [2,4,6,8,10]
            
        case .Map:
            mapFun(a[0])
            //-map out the input and multiply by two
            //(the console will ask)How do you want to map it? Choose one of the following: add, subtract, multiply or divide
            //(sample input) multiply
            //(the conosle will ask) What is the parameter do you want to multiply? Please enter a integer.
            //(sample input) 10
            //(the console will ask) Please input the numbers seperated by a comma below. The numbers will be multiply by 10.
            //(enter the following) 1,2,3,4,5,6,7,8,9,10
            //(the console will show result) [10,20,30,40,50,60,70,80,90,100]
        }
    
    }else{
        print ("unknown command")
    }
}

while true{
    print("Please enter one of the following: guessingGame, math, mathGame, filter or map")
    print(">>>", terminator: "")
    if let response = readLine (stripNewline: true){
        if response == "exit" {
            break
        }
        let commands = response.componentsSeparatedByString(" ")
        processCommand(commands)
    }else{
        print("You gotta enter something")
    }
}

//
//#### Q1a. Command Line Math Stuff
//Incorporate ```mathStuffFactory(_:)``` that we worked on in Closures Two into
//a  command line application. Parse input from the user into operator, and two operands,
//run the operation and return the answer.  Reject non-conforming ops with a message.
//
//For example, your console might look like this:
//
//```
//>>> 5 + 3
//5 + 3 = 8
//>>> 5 * 3
//5 * 3 = 15
//>>> 5 & 3
//Unknown operator: &
//>>> Exit
//```
//
//#### Q1b. Mix in an Enumeration
//
//Rework to include an ```enum``` to represent the operator cases.
//
//#### Q1c. Random Math Stuff
//
//Make question mark perform a random operation.
//
//#### Q1d. Random Math Stuff Game
//
//When the question mark operator is used the application will secretly perform
//the operation and return only the result. The user is then prompted to guess the
//operator used.
//
//For this, your console might look like this:
//
//```
//>>> 5 + 3
//5 + 3 = 8
//>>> 5 ? 3
//15
//>>> -
//Nope!
//>>> *
//Correct!
//>>> Exit
//```
//
//#### Q2. Implement your **own** filter function
//
//> **Note**: Questions 2 and 3 should also be implemented inside a variation of the command
//> loop we built in class, and which you used to work on Question 1. This way you can put
//> the whole assignment in one swift file. To hook this up, you s hould create functions just like we did for
//> ```echo``` and ```number``` in class. From those functions you can call
//> your implementations of ```myFilter``` and ```myMap```.
//> You will have to look out for ```map``` and ```filter``` commands and treat them
//> separately to the operations handled by your solution to Question 1.
//
//Write your own filter function, ```myFilter(_:filter:)```. You'll only
//be able to write it to work for one type at this point. Let's make it work
//for an array of ```Int```.
//
//```swift
//let ints = [4,2,6,3,4,6,2,8,5]
//
//// the built-in function works like this
//let filtered = ints.filter { (a) -> Bool in
//    a % 2 == 0
//}
//
//// ... but your function will have to take the array as its first parameter
//// and the closure as the second/last parameter.
//myFilter(ints) { (a) -> Bool in
//    a % 2 == 0
//}
//```
//
//Use this as a starting point.
//
//```swift
//func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//
//}
//```
//
//#### Q3. Implement your **own** map function
//
//Follow the same approach as you used to solve Q2 to write your own map function.
//
//
//#### Don't forget to read Classes and Structs.

