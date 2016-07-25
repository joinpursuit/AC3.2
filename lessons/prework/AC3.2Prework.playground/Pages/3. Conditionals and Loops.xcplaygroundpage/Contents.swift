//: [Previous](@previous)

import Foundation

// 1. Consider the variable integer below called "population" and the if/else condition. Add an else if condition that states if the population is less than 10000, the message changes to say it's a small town. Add an else condition where the message changes to say it's a mid-size town.

var population: Int = 10000
var message = String()

if population > 10000 {
    message = "\(population) is a large town"
}

print(message)

// 2. Remove the "default" clause from this switch statement. What happens? Edit the number value to whatever you want a few times - what does it print?

let number = 42

switch number {
case 365:
    print("Days in year")
case 1024:
    print("Bytes in a Kilobyte")
case 0:
    print("Where arrays start")
case 42:
    print("The answer to life, the universe and everything")
default:
    print("Some uninteresting number")
}

// 3. Create a loop that prints out integers from 0 to 100.

// 4. Using the above loop, create conditions such that if i equals 25,50 and 75, print "1/4", "1/2" and "3/4", respectively.

// 5. Use a loop to print out each element of the below array.

let characterArray = ["V","E","R","T","I","C","A","L"]


// You're done! Move on to the next page.

//: [Next](@next)
