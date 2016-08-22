////: Playground - noun: a place where people can play

//import UIKit

//### Strings Exercises
//#### S1.
//Without using string interpolation, print out a string that combines myGreeting and myName.
////```
//let myGreeting = "Hello, "
//let myName = "Ben"
//print(myGreeting, myName, separator: "")
//```
//#### S2.
//Write code that prints out myArray as a single string separated by spaces.
//```swift
//let myArray = ["Hi", "there,", "how","is","it","going?"]
//var newString: String = ""
//for word in myArray {
//    newString += word
//    newString += " "
//}
//print(newString)
//```
//#### S3.
//Write code that prints out all the numbers from 1 to 10 as a single string.  (Hint: the String() function can convert an int to a string)
//for i in 1...10 {
//    var numString = String(i)
//    print(numString, terminator: "")
//}
//#### S4.
//Write code that prints out all the even numbers from 5 to 51 as a single string.
//for i in 5...51 where i % 2 == 0 {
//    var string = String(i)
//    print(string, terminator: " ")
//}
//#### S5.
//Write code that prints out every number ending in 4 between 1 and 60 as a single string.
//for i in 1...60 where i % 10 == 4 {
//    var string = String(i)
//    print(string, terminator: " ")
//}
//#### S6.
//Print each character in the string ```Hello world!```
//for c in "Hello world!".characters {
//    print(c)
//}
//#### S7.
//Using '.characters' and loop, print the last character in the string below
//```swift
//let myStringSeven = "Hello world!"
//for c in myStringSeven.characters {
//    if c == "!" {
//        print(myStringSeven[myStringSeven.endIndex.predecessor()])
//    }
//}
//```
//#### S8.
//Write code that switches on a string.  If the string's length is even, print out every character.  If the string's length is odd, print out every other character
let myString = "abcdefg"

switch myString {
case let _ where myString.characters.count % 2 == 0:
    for i in myString.characters{
        print(i)
    }
default:
    var j = 0;
    for (j, k)in myString.characters.enumerate() {
        if j % 2 == 0 {
            print(k)
        }
    }
}
//#### S9.
//Initialize a String with a character. Show that it is a Character, and not another String, you're using to initialize it.
//var charString: Character = "A"
//charString.dynamicType
//### Unicode exercises
//#### U1.
//Build five pairs of canonically equivalent strings, the first of each being a pre-composed character and
//the second being one that uses combinable unicode scalars. Show that they are equivalent.
//let precomposedE = "é"
//let precomposedA = "å"
//let precomposedN = "ñ"
//let precomposedU = "ü"
//let precomposedI = "î"
//let decomposedE = "\u{65}\u{301}"
//let decomposedA = "\u{61}\u{30a}"
//let decomposedN = "\u{6e}\u{303}"
//let decomposedU = "\u{75}\u{301}"
//let decomposedI = "\u{69}\u{301}"
//precomposedE == decomposedE
//precomposedA == decomposedA
//precomposedN == decomposedN
//precomposedU == decomposedU
//precomposedI == decomposedI
//Refer to this [Unicode Table](http://unicode-table.com/en/).
//    #### U2.
//    * Using only Unicode, print out "HELLO WORLD!"
//    #### U3.
//    * Using only Unicode, print out your name.
//    #### U4
//    * (Bonus) Using only Unicode, print "Hello World" in another language.
//    #### U5.
//    Print the below flower box using the following information.
//    * The unicode number for ⚘ is U-2698
//    * The top and bottom of the box are represented by dashes and the rows are ```|```
//    * Use the __terminator__ argument in your print statements to print on the same line.
//    * Hint: It may be useful to try printing out a box of just one character to start then work your way from there.
//    ```
//    - - - - - - - - - - -
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    | ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
//    - - - - - - - - - - -
//    ```
//    Add Comment