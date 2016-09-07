
//1)
//Create an array of strings called colors that contain "orange", "red", "yellow", "turquoise", and "lavender"
//Using array subscripting and string interpolation, print out the String "orange, yellow, and lavender are some of my favorite colors"

//Write all your code below:

var colors = [ "orange", "red", "yellow", "turquoise", "lavender"]
print("\(colors[0]), \(colors[2]) and \(colors[4]) are some of my favorite colors")

//2)
//Remove "Illinois" and "Kansas" from the array below.

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
westernStates.removeLast(2)

//Write all your code below:

//3)
//Iterate through the array below.  For each each state, print out whether or not it is in the continental United States.

let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]

//Write all your code below:

for state in moreStates {
    if state == "Hawaii" || state == "Alaska" {
        print("\(state): not continental")
    } else {
        print("\(state): continental")
    }
}


//4)
//a) print out how many non-whitespace characters are in myString
let myString = "This is practice for the next problem!"

//Write all your code below:
var WSCount = 0
for i in myString.characters {
    if i == " " {
        WSCount += 1
    }
}

print("There are \(WSCount) whitespaces.")

//b) Iterate through the array below.  For each sentence, print out how many non-whitespace characters are in it.

let myFavoriteQuotes = ["To be or not to be, that is the question.", "The only source of knowledge is experience.", "Mr. Gorbachev, tear down this wall!", "Four score and twenty years ago..."]

//Write all your code below:

for j in 0..<myFavoriteQuotes.count {
    var WS = 0
    for i in myFavoriteQuotes[j].characters {
        if i == " " {
            WS += 1
        }
    }
    print("There are \(WS) whitespaces in sentence \(j+1).")
}

//5)
//The below array represents an unfinished batting lineup for a baseball team. You, the coach, need to make some last minute changes.

//Add "Suzuki" to the end of your lineup.
//Change "Jeter" to "Tejada".
//Change "Thomas" for "Guerrero"
//Put "Reyes" to bat 8th instead.
var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]

//Write all your code below:
battingLineup.append("Suzuki")
battingLineup[1] = "Tajeda"
battingLineup[5] = "Guerrero"
battingLineup.removeAtIndex(0)
battingLineup.insert("Reyes", atIndex: 7)

//6)
//Iterate through the garden and place any 🌷 that you find into the basket.  Replace any 🌷 that you pick up with "dirt".  Then print how many 🌷 are in your basket.
var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
var basket = [String]()

for i in 0..<garden.count {
    if garden[i] == "🌷" {
        basket.append("🌷")
        garden[i] = "dirt"
    }
}
print("\(basket.count) flowers in basket")

//Write all your code below:

//7)
//Iterating through listOfNumbers and print out the largest element.
var listOfNumbers = [1, 2, 3, 10, 100, 13, 14, 31]

//Write all your code below:
var greatest = listOfNumbers[0]
for i in 0..<listOfNumbers.count {
    if greatest < listOfNumbers[i] {
        greatest = listOfNumbers[i]
    }
}
print(greatest)

//8)
//Iterate through secondListOfNumbers, and print out all the odd numbers.
var secondListOfNumbers = [19,13,14,19,101,10000,141,404]


//Write all your code below:
for case var i in secondListOfNumbers where i%2 == 1{
    print(i, terminator: " ")
}
print()



//9)
//Iterate through thirdListOfNumbers, and print out the sum.
var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]

//Write all your code below:
var sum = 0
for i in thirdListOfNumbers {
    sum += i
}
print("The sum is \(sum)")

//10)
//Iterate through the array and check to see if there is at least one integer that equals target.  Then, print "YES" if you found a match, and "NO" if you didn't

let target = 84
var fourthListOfNumbers = [83, 1, 66, 64, 90, 22, 97, 10, 84, 27]



//Write all your code below:

var targetFound = false

for i in fourthListOfNumbers {
    if i == target {
        targetFound = true
        break
    }
}

if targetFound {
    print("YES")
} else {
    print("NO")
}

//11)
//Append every Int that appears in both listOne and listTwo to the sharedElements array.  Then print how many Ints are shared.
var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()


//Write all your code below:

for i in listOne {
    for j in listTwo {
        if i == j {
            sharedElements.append(i)
        }
    }
}
print("There are \(sharedElements.count) Ints shared")

//12)
//Write code such that noDupeList has all the same Ints as dupeFriendlyList, but has no more than one of each Int.
var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
var noDupeList: [Int] = []

var greatest1 = dupeFriendlyList[0]
for i in dupeFriendlyList {
    if i > greatest1 {
        greatest1 = i
    }
}

var check = [Bool](count: greatest1+1, repeatedValue: false)

for i in dupeFriendlyList {
    check[i] = true
}

for j in 0..<check.count {
    if check[j] {
        noDupeList.append(j)
    }
}

print(noDupeList)

//13)
//Find the second smallest Int in ages
var ages = [53, 31, 88, 65, 25, 44, 77, 18, 24, 84, 46, 42, 50, 28, 78, 67, 83, 70, 38, 69, 66, 71, 68, 61, 86, 85, 41, 15, 81, 40]

var smallest = ages[0]
var secondSmallest = ages[1]

if ages[1] < ages[0] {
    smallest = ages[1]
    secondSmallest = ages[0]
}

for i in ages {
    if i < smallest {
        secondSmallest = smallest
        smallest = i
    }
}

print("SecondSmallest is \(secondSmallest)")

//14)
//Print out the sum of the diagonals of myMatrix

var myMatrix = [[10, 14, 12], [91, 1, 9], [31, 3, 21]]

var sum1 = myMatrix[0][0] + myMatrix[1][1] + myMatrix[2][2]
var sum2 = myMatrix[0][2] + myMatrix[1][1] + myMatrix[2][0]

print("The sums are \(sum1) and \(sum2)")


//15)
//Using for loops, rotate myMatrix 90 degrees (https://sharecode.io/assets/problem_images/2518_5.jpg)

var toRotate = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

/*** Tom's code
var arrOne = [Int]()
var arrTwo = [Int]()
var arrThree = [Int]()

for x in 0..<toRotate.count {
    for y in (0..<toRotate[x].count).reverse() {
        if x == 0 {
            arrOne.append(toRotate[y][x])
        } else if x == 1 {
            arrTwo.append(toRotate[y][x])
        } else if x == 2 {
            arrThree.append(toRotate[y][x])
        }
    }
}
 ***/

//16)
//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23
//Find the sum of all the multiples of 3 or 5 below 1000
//https://projecteuler.net/problem=1

var summ = 0

for case var i in 0..<1000 where i%3 == 0 || i%5 == 0 {
        summ += i
}
print("This sum is \(summ)")


//17)
//Print the first element that repeats in someRepeats

var someRepeats = [25, 11, 30, 31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11 ,5 ,39, 13 ,17,43,1,1,15, 25]

var noRepeat: [Int] = [someRepeats[0]]

var j: Int

wholeLoop: for i in 1..<someRepeats.count {
    j = i - 1
    while j >= 0 {
        if someRepeats[i] == someRepeats[j] {
            break wholeLoop
        } else {
            j -= 1
        }
    }
    noRepeat.append(someRepeats[i])
}

print(noRepeat)


//var emptyOne :[Int] = []
//
//for i in 0..<someRepeats.count{
//    var found = false
//    for j in 0..<emptyOne.count{
//        if someRepeats[i] != emptyOne[j]{
//        } else {
//            found = true
//            print("\(someRepeats[i]) is the first Repeat")
//        }
//    }
//    if found == false {
//        emptyOne.append(someRepeats[i])
//    } else {
//        break
//    }
//}



//18)
//Make an array that contains all elements that appear more than twice in someRepeatsAgain

var someRepeatsAgain = [25,11,30,31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11 ,5 ,39, 13 ,17,43,1,1,15,25]

/*******
var arraySoFar: [Int] = []
var TheRepeats: [Int] = []

var k: Int

wholeLoop: for i in 1..<someRepeatsAgain.count {
    k = i - 1
    while k >= 0 {
        if someRepeatsAgain[i] == someRepeatsAgain[k] {
            repeatAgain.append(someRepeatsAgain[i])
            print("This is repeated: \(someRepeats[k])")
            break wholeLoop
        } else {
            k -= 1
        }
    }
    someRepeatsAgain.append(someRepeatsAgain[i])
}

print(noRepeat)
*******/

//19)
//Identify if there are 3 integers in the following array that sum to 10.  If so, print them.
//If there are multiple triplets, print all possible triplets.

var tripleSumArr = [-20,-14, -8,-5,-3,-2,1,2,3,4,9,15,20,30]

