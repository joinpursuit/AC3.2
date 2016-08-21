## AC3.2 - Week 1 - Homework

### I. Variables

#### Question 1.
Provide the following constants/variable names with the most appropriate type annotations.

1. let _firstName_: String
2. let _middleInitial_: Character
3. var _age_: Int
4. var _latitude_: Double
5. var _longitude_: Double
6. var _isRainingCurrently_: Bool
7. let _completeAddress_: String
8. let _π_: Double

#### Question 2.
Convert the following decimal numbers to Binary:
* 55 >> 110111
* 122 >> 
* -1
* 15

#### Question 3.
Using nested loops, print the numbers from 0 to 100, then back to 0.

for i in 0...100 {
    print(i)
        if i == 100 {
        var num = i
            while num > 0 {
            num -= 1
            print(num)
            }
        }
}


#### Question 4.
While ```i``` is greater than 1, print only all positive even numbers and break 
out of the loop when you've reached 220.

for i in 1...220 {
    if i == 220 {
        print(i)
        break
    } else if i%2==0 {
        print(i)
    }
}

#### Question 5.
* Using any kind of loop, print the sum of all numbers between 0 to 50.

    var sum = 0
    for i in 1..<50 {
        sum+=i
    }
    print(sum)


* Using a while loop, print all the odd numbers from 0 to 100.

    var i = 0
        while i <= 100 {
            if i%2==1 {
            print(i)
        }
        i+=1
        }


* Using a ```for case``` loop, print all the multiples of 10 from 50 to 500.

for case let i in 50...500 where i%10==0 {
    print(i)
}

#### Question 6.
Consider the code below. Loop through the ```professionals``` array and using a switch statement:
* Print out the professionals with _lastName_ "Smith".
    
    for person in professionals {
        switch person {
            case let person where person.lastName == "Smith":
                print("\(person.firstName)'s last name is \(person.lastName")
        default:
            break
        }
    }

* Print out all the developers.

    for person in professionals {
        switch person {
            case let person where person.job == "developers":
                print("\(person.firstName) is a developer.")
        default:
            break
        }
    }


* Print out all the non-developers.

    for person in professionals {
        switch person {
            case let person where person.job != "developers":
                let vowels: [Characters] = ["a", "e", "i", "o", "u"]
                if vowels.contain(person.job.lowercaseString.first!) {
                    print("\(person.firstName) is an \(person.job)"
                } else {
                    print("\(person.firstName) is a \(person.job)"
                }
        }
    }

* Print out the professionals in their 20s.

    for person in professionals {
        switch person.age {
            case 20...29 {
                    print("\(person.firstName) is in their 20s.")
            }
        }
    }

* Print out the professionals in their 30s.

    for person in professions {
        switch person.age {
            case 30...39 {
                print("\(person.firstName) is in their 30s.")
            }
        }
    
    }

```swift
let sarah = (firstName: "Sarah", lastName: "Palardo", job: "teacher", age: 32)
let beth = (firstName: "Beth", lastName: "Newell", job: "developer", age: 29)
let jana = (firstName: "Jana", lastName: "Smith", job: "developer", age: 33)
let lauren = (firstName: "Lauren", lastName: "Olson", job: "doctor", age: 27)
let charles = (firstName: "Charles", lastName: "Wong", job: "developer" , age: 24)
let steve = (firstName: "Steve", lastName: "Smith", job: "writer", age: 28)
let jamal = (firstName: "Jamal", lastName: "Smith", job: "developer", age: 25)
let navindra = (firstName: "Navindra", lastName: "Chowdhurry", job: "actuary", age: 29)

let professionals = [sarah, beth, jana, lauren, charles, steve, jamal, navindra]
```

* Hint: Use the framework below for your code

```swift
for person in professionals {
	switch person {
 
	}
}
```

#### Question 7.
Given the arrays below, use nested loops to print out every possible card in the deck.

```swift
let denominations = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
let suits = ["♠️", "♣️", "♥️", "♦️"]
```

var denomLength = denominations.count-1
var suitLength = suits.count-1
    for i in 0..denomLength {
        for j in 0...suitLength {
            print(denominations[i] + suits[j])
        }
    }



```

#### Question 8.
Print out the lyrics to the song ["99 Bottles of Beer"](http://www.99-bottles-of-beer.net/lyrics.html)
* Hint 1: Use a for-loop and a switch statement
* Hint 2: Below is an example of reversing a range in Swift

```swift
for i in (1...5).reverse() {
    print(i)
}
```
while bottlesOfBeer > 0 {
    for i in (0...99).reverse() {
    remainingBeer = bottlesOfBeer - 1
        if bottlesOfBeer == 2 {
        print("\(bottlesOfBeer) bottles of beer on the wall, \(bottlesOfBeer) bottles of beer.  Take one down and pass it around, \(remainingBeer) bottle of beer on the wall.")

        } else if bottlesOfBeer == 1 && remainingBeer == 0 {
        print("\(bottlesOfBeer) bottle of beer on the wall, \(bottlesOfBeer) bottle of beer.  Take one down and pass it around, no more bottles of beer on the wall.")
        } else if bottlesOfBeer == 0 {
        print("No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall!")
        //bottlesOfBeer = 100
        }
        else {
        print("\(bottlesOfBeer) bottles of beer on the wall, \(bottlesOfBeer) bottles of beer.  Take one down and pass it around, \(remainingBeer) bottles of beer on the wall.")
        }

        bottlesOfBeer-=1
    }
}


#### Question 9.
##### "FizzBuzz"
* Create a loop that prints all integers from 0 to 100.
* For all multiples of 3, print out "Fizz" instead of the number.
* For all multiples of 5, print out "Buzz"  instead of the number.
* For all multiples of 3 and 5, print out "FizzBuzz" instead of the number.

for i in 0...100 {
    if i%3==0 && i%5==0 {
        print("\(i),FizzBuzz")
    } else if i%3==0 {
        print("\(i),Fizz")
    } else if i%5==0 {
        print("\(i),Buzz")
    }
}

#### Question 10.
Write code that will print out the first 10 [Fibonacci](http://www.codeforwin.in/2015/06/fibonacci-series-in-c-program.html) numbers:

```
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```
