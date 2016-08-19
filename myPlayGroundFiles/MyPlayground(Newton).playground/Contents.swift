//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//let names = [("Erica", 3), ("Kareem", 4), ("Tom", 2), ("Gabriel", 4), ("Michael", 0)]
//
//for case let (name, likes) in names {
//    if (likes > 2) {
//        print(name, likes)
//    }
//    else {
//        print("Bad friend \(name) only \(likes) likes.")
//}
//}

//CREATING TUPLES FOR GROUPING NAMES & LIKES
/*let names = [("Tyler", 15), ("Justin", 20), ("Tony", 12)],

for case let (name, pullups) in names {
    if (pullups >= 15) {
        print(name, pullups)
}
    else{
        print("Only \(pullups) pull-ups. You need to do better \(name)!")
}
}*/

//INITIALIZING INCREMENTS USING WHILE
//var number = 20 // initalize
//while number > 1 {// condition
//    number /= 2
//    print (number) // body code
//}
//    number += 2 // increment indicator

//CREATING AN INFINITE LOOP!
/*var shields = 5
var blastersOverHeating = false
var blasterFireCount = 0
while shields > 0 {
    if blastersOverHeating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters are ready to fire")
        sleep(1)
        blastersOverHeating = false
        blasterFireCount = 0
}
    if blasterFireCount > 100 {
        blastersOverHeating = true
        continue
}
// Fire blasters!
    print("fire blasters!")

// note the version in the book used ++
    blasterFireCount += 1
}*/
//
//var doubleNumber = 20.0
//while doubleNumber > 0.01 {
//    doubleNumber /= 2.0
//    
//    print(doubleNumber)
//}

//var shields = 5
//var blastersOverheating = false
//var blasterFireCount = 0
//var newShieldLevel = shields - 1
//while shields > 0{
//    if blastersOverheating {
//        print("Blasters are overheated!  Cooldown initiated.")
//        sleep(5)
//        print("Blasters ready to fire")
//        sleep(1)
//        blastersOverheating = false
//        blasterFireCount = 0
//    }
//    if blasterFireCount > 100 {
//        blastersOverheating = true
//        continue
//    }
//    // Fire blasters!
//    print("Fire blasters!")
//    
//    // note the version in the book used ++
//    blasterFireCount += 1
//    newShieldLevel
//}

let product = 24
outer: for i in 1...12 {
    inner: for j in 1...12 {
        if i * j == product {
            print("\(product) = \(i) x \(j)")
            //break outer
        }
        else {
            print("Dud: \(i) \(j)")
        }
    }
}




