//
//  main.swift
//  echo
//
//  Created by Victor Zhong on 9/2/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import Foundation

// Enum for Process Command Types
enum Command: String {
	case Echo = "echo"
	case Number = "number"
	case Play = "play"
	case Math = "math"
	case Filter = "filter"
	case Map = "map"
}

// Enum for Math Factory Q1b.
enum MathString: String {
	case Add = "+"
	case Subtract = "-"
	case Multiply = "*"
	case Divide = "/"
	case Random = "?"
}

// Function to print input
func echo(s: String) {
	print(s)
}

// Function to print numbers as Ints
func num(n: String) {
	if let i = Double(n) {
		print(i)
	}
}

// Main Math Engine
func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
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

// mathStuffFactory constants
let plus = mathStuffFactory("+")
let minus = mathStuffFactory("-")
let mult = mathStuffFactory("*")
let divide = mathStuffFactory("/")

// mathStuffFactory running with enum
func math(m: String) {
	if m == "mathFactory" {
		let calcing = true
		outer: while calcing {
			print(">>>", terminator: "")
			if let calc = readLine(stripNewline: true) {
				if calc == "stop" {
					break
				}
				let mathing = calc.componentsSeparatedByString(" ")
				if mathing.count <= 1 {
					print("Try again in this format: \"5 + 5\"")
					continue outer
				}
				if Double(mathing[0]) == nil || Double(mathing[2]) == nil {
					print("Try again in this format: \"5 + 5\"")
					continue outer
				}
				if let calculator = MathString(rawValue: mathing[1]) {
					switch calculator {
					case .Add:
						print("\(mathing[0]) + \(mathing[2]) = \(Int(plus(Double(mathing[0])!, Double(mathing[2])!)))")
					case .Subtract:
						print("\(mathing[0]) - \(mathing[2]) = \(Int(minus(Double(mathing[0])!, Double(mathing[2])!)))")
					case .Multiply:
						print("\(mathing[0]) * \(mathing[2]) = \(Int(mult(Double(mathing[0])!, Double(mathing[2])!)))")
					case .Divide:
						print("\(mathing[0]) / \(mathing[2]) = \(Int(divide(Double(mathing[0])!, Double(mathing[2])!)))")
					case .Random:
						randomGuess(Double(mathing[0])!, b: Double(mathing[2])!)
					}
				}
			}
		}
	}
}

/* Q1a. & Q1c.
// mathStuffFactory running with switch and random operator assignment
func math(m: String) {
	if m == "mathFactory" {
		let calcing = true
		outer: while calcing {
			print(">>>", terminator: "")
			if let calc = readLine(stripNewline: true) {
				if calc == "stop" {
					break
				}
				let mathing = calc.componentsSeparatedByString(" ")
				if mathing.count <= 1 {
					print("Try again in this format: \"5 + 5\"")
					continue outer
				}
				switch mathing[1] {
				case "+":
					print("\(mathing[0]) + \(mathing[2]) = \(Int(plus(Double(mathing[0])!, Double(mathing[2])!)))")
				case "-":
					print("\(mathing[0]) - \(mathing[2]) = \(Int(minus(Double(mathing[0])!, Double(mathing[2])!)))")
				case "*":
					print("\(mathing[0]) * \(mathing[2]) = \(Int(mult(Double(mathing[0])!, Double(mathing[2])!)))")
				case "/":
					print("\(mathing[0]) / \(mathing[2]) = \(Int(divide(Double(mathing[0])!, Double(mathing[2])!)))")
				case "?":
					print("\(mathing[0]) / \(mathing[2]) = \(Int(randomMath(Double(mathing[0])!, b: Double(mathing[2])!)))")
				default:
					print("Unknown operator: \(mathing[1])")
				}
			}
		}
	}
}
*/

/*
// Random math operation
func randomMath (a: Double, b: Double) -> Int {
	let randomNum = Int(arc4random_uniform(3)+1)
	switch randomNum {
	case 1:
		return Int(plus(a, b))
	case 2:
		return Int(minus(a, b))
	case 3:
		return Int(mult(a, b))
	case 4:
		return Int(divide(a, b))
	default:
		return Int(divide(a, b))
	}
}
*/

// Random math game operation
func randomGuess (a: Double, b: Double) {
	let randomNum = Int(arc4random_uniform(3)+1)
	var randomOp = ""
	switch randomNum {
	case 1:
		print(Int(plus(a, b)))
		randomOp = "+"
	case 2:
		print(Int(minus(a, b)))
		randomOp = "-"
	case 3:
		print(Int(mult(a, b)))
		randomOp = "*"
	case 4:
		print(Int(divide(a, b)))
		randomOp = "/"
	default:
		print(Int(divide(a, b)))
		randomOp = "/"
	}
	outer: while true {
		print(">>> ", terminator: "")
		if let guess = readLine(stripNewline: true) {
			if guess == "stop" {
				print("Stopping.")
				break
			}
			if guess == randomOp {
			print("Correct!")
				break
			}
			else {
				print("Nope!")
				continue outer
			}
		}
	}
}

// guessingGame loop
func play(i: String) {
	if i == "guessingGame" {
		let randomNum = Int(arc4random_uniform(10)+1)
		while true {
			print("Guess a number between 1 and 10: ", terminator: "")
			if let guess = readLine(stripNewline: true) {
				if guess == "stop" {
					print("Stopping.")
					break
				}
				let huh = Int(guess)
				switch huh {
				case let huh where huh > randomNum:
					print("Guess lower")
				case let huh where huh < randomNum:
					print("Guess higher")
				default:
					print("You win")
					break
				}
			}
		}
	}
}

// Q2. myFilter function
let ints = [4,2,6,3,4,6,2,8,5]

func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
	var filteredArray:[Int]=[]
	for x in inputArray {
		if filter(x) {
			filteredArray.append(x)
		}
	}
	return filteredArray
}

func filterThis(i: String) {
	print("The input is \(ints)")
	if i == "filterByEvens" {
		print("The output string is ", terminator:"")
		print(myFilter(ints) { (a) -> Bool in
		a % 2 == 0
		})
	}
	if i == "filterByOdds" {
		print("The output string is ", terminator:"")
		print(myFilter(ints) { (a) -> Bool in
			a % 2 == 1
			})
	}
}

//myFilter(ints) { (a) -> Bool in
//	a % 2 == 0
//}

// Q3. myMap function
func myMap(inputArray: [Int], filter: (Int) -> Int) -> [Int] {
	var filteredArray:[Int]=[]
	for x in inputArray {
		filteredArray.append(filter(x))
	}
	return filteredArray
}

func mapThis(i: String) {
	print("The input is \(ints)")
	if i == "addOne" {
		print("The output string is ", terminator:"")
		print(myMap(ints) { (a) -> Int in
			a + 1
			})
	}
	if i == "double" {
		print("The output string is ", terminator:"")
		print(myMap(ints) { (a) -> Int in
			a * 2
			})
	}

}

// Function to capture commands/user inputs
func processCommand(command: [String]) {
	if command.count < 2 {
		print("We need at least a command and an argument")
	}
	if let com = Command(rawValue: command[0]) { // refers to enum Commands
		switch com {
			case .Echo:
				echo(command[1])
			case .Number:
				num(command[1])
			case .Play:
				play(command[1])
			case .Math:
				math(command[1])
			case .Filter:
				filterThis(command[1])
			case .Map:
				mapThis(command[1])
		}
	}
}

// Command Line Prompt Code starts here!
while true {
	print("Type something: ", terminator: "")
	if let response = readLine(stripNewline: true) {
		if response == "stop" {
			break
		}
		
		let commands = response.componentsSeparatedByString(" ")
		
		// sending input to process command
		processCommand(commands)
	}
	else {
		print("You gotta enter something")
	}
}