/*
//1)
//Create an array of strings called colors that contain "orange", "red", "yellow", "turquoise", and "lavender"
//Using array subscripting and string interpolation, print out the String "orange, yellow, and lavender are some of my favorite colors"

//Write all your code below:

var colours = ["orange", "red", "yellow", "turquoise", "lavender"]

print("\(colours[0]), \(colours[1]), and \(colours[3]) are some of my favourite colours")

//2)
//Remove "Illinois" and "Kansas" from the array below.

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]


//Write all your code below:

westernStates.removeRange(4...5)


for i in 0..<westernStates.count {
    if westernStates[i] == "Illinois" || westernStates[i] == "Kansas" {
        westernStates.removeAtIndex(i)
    }
}

//for i in 0..<

//3)
//Iterate through the array below.  For each each state, print out whether or not it is in the continental United States.

let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]

//Write all your code below:


for i in 0..<moreStates.count {
    if moreStates[i] != "Hawaii" || moreStates[i] != "Alaska" {
        print("\(moreStates[i]) is in the continental US")
    } else {
        print("\(moreStates[i]) isn't in the continental US")
    }
}



//4)
//a) print out how many non-whitespace characters are in myString
let myString = "This is practice for the next problem!"

//Write all your code below:

var sum = 0

for i in 0..<myString.characters.count {
    if myString[myString.startIndex.advancedBy(i)] != " " {
        sum += 1
    }
}
myString.characters.count
print(sum)




//b) Iterate through the array below.  For each sentence, print out how many non-whitespace characters are in it.


let myFavoriteQuotes = ["To be or not to be, that is the question.", "The only source of knowledge is experience.", "Mr. Gorbachev, tear down this wall!", "Four score and twenty years ago..."]

//Write all your code below:


var sum1 = 0


for i in 0..<myFavoriteQuotes.count {
    for j in 0..<myFavoriteQuotes[i].characters.count {
        if myFavoriteQuotes[myFavoriteQuotes.startIndex.advancedBy(i)] != " " {
            sum1 += 1
        }
    }
    print("There are \(sum1) non-whitespace characters in sentence \(i)")
    sum1 = 0
}


//this is horribly wrong

for i in myFavoriteQuotes {
    sum1 = 0
    for j in i.characters {
        if j != " " {
            sum1 += 1
        }
    }
    print("There are \(sum1) non-whitespace characters in sentence \(i)")
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
battingLineup[2] = "Tejada"
battingLineup[5] = "Guerrero"
battingLineup.removeFirst()
battingLineup.append("Reyes")
battingLineup



//6)
//Iterate through the garden and place any 🌷 that you find into the basket.  Replace any 🌷 that you pick up with "dirt".  Then print how many 🌷 are in your basket.
var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
var basket = [String]()

//Write all your code below:

for i in 0..<garden.count {
    if garden[i] == "🌷" {
        basket.append(garden[i])
        garden[i] = "dirt"
    }
}
print(basket.count)

//7)
//Iterating through listOfNumbers and print out the largest element.
var listOfNumbers = [1, 2, 3, 10, 100, 13, 14, 31]

//Write all your code below:



var currentLargest: Int?

for i in listOfNumbers {
    if i > currentLargest {
        currentLargest = i
    }
}
print(currentLargest!)

//8)
//Iterate through secondListOfNumbers, and print out all the odd numbers.
var secondListOfNumbers = [19,13,14,19,101,10000,141,404]

//Write all your code below:



for i in secondListOfNumbers {
    if i % 2 == 1 {
        print(i)
    }
}


//9)
//Iterate through thirdListOfNumbers, and print out the sum.
var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]

//Write all your code below:
var sumOfThirdListOfNumbers = 0

for i in thirdListOfNumbers {
    sumOfThirdListOfNumbers += i
}
print(sumOfThirdListOfNumbers)




//10)
//Iterate through the array and check to see if there is at least one integer that equals target.  Then, print "YES" if you found a match, and "NO" if you didn't

let target = 84
var fourthListOfNumbers = [83, 1, 66, 64, 90, 22, 97, 10, 84, 27]


//Write all your code below:
var found = false
for i in fourthListOfNumbers where i == 84{
    print("YES")
    found = true
}
if !found {
    print("NO")
}


//11)
//Append every Int that appears in both listOne and listTwo to the sharedElements array.  Then print how many Ints are shared.
var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()


//Write all your code below:


for i in listOne {
    for j in listTwo where i == j{
        sharedElements.append(j)
    }
}
print(sharedElements.count)

//12)
//Write code such that noDupeList has all the same Ints as dupeFriendlyList, but has no more than one of each Int.
var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
var noDupeList: [Int] = []
var checkerArray = [Bool] (count:dupeFriendlyList.count, repeatedValue: false)



for val in dupeFriendlyList  {
    // each Int in arr change each Index of "check" to true
    checkerArray[val - 1] = true
}
var noDupleList: [Int] = []
for i in 0..<checkerArray.count {
    if (checkerArray[i]) {
        noDupeList.append(i + 1)
    }
}
print(noDupeList)


//13)
//Find the second smallest Int in ages
var ages = [53, 31, 88, 65, 25, 44, 77, 18, 24, 84, 46, 42, 50, 28, 78, 67, 83, 70, 38, 69, 66, 71, 68, 61, 86, 85, 41, 15, 81, 40]

var smallest = ages[0]

for i in ages {
    if i < smallest {
        smallest = i
    }
}
print(smallest)


//14)
//Print out the sum of the diagonals of myMatrix

var myMatrix = [[10, 14, 12], [91, 1, 9], [31, 3, 21]]

var diagonal1 = myMatrix[0][0] + myMatrix [1][1] + myMatrix [2][2]
var diagonal2 = myMatrix[0][2] + myMatrix [1][1] + myMatrix[2][0]

print(diagonal1 + diagonal2)


//15)
//Using for loops, rotate myMatrix 90 degrees (https://sharecode.io/assets/problem_images/2518_5.jpg)

var toRotate = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

[1, 2, 3]
[4, 5, 6]
[7, 8, 9]

[7, 4, 1]
[8, 5, 2]
[9, 6, 3]

var newArr: [[Int]] = []

for i in 0..<toRotate.count {
    newArr.append([])
}

for (index, row) in toRotate.reverse().enumerate() {
    for (index2, value) in row.enumerate() {
        newArr[index2].append(value)
    }
}

newArr


//16)
//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23
//Find the sum of all the multiples of 3 or 5 below 1000
//https://projecteuler.net/problem=1

var sum55 = 0

for i in 0..<1000 {
    if i % 5 == 0 || i % 3 == 0 {
        sum55 += i
    }
}

print(sum55)

//17)
//Print the first element that repeats in someRepeats

var someRepeats = [25, 11, 30, 31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11 ,5 ,39, 13 ,17,43,1,1,15, 25]
var firstRepeat = [Int]()
someRepeats.count

for i in someRepeats {
    for j in firstRepeat where i == j {
        print(j)
        break
        
    }
    firstRepeat.append(i)
}



//18)
//Make an array that contains all elements that appear more than twice in someRepeatsAgain

var someRepeatsAgain = [25,11,30,31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11 ,5 ,39, 13 ,17,43,1,1,15,25]


var firstRepeatAgain = [Int]()
var firstRepeatAgain2 = [Int]()
var numsThreeTimes = [Int]()

for i in someRepeatsAgain {
var found1 = false //we are setting bools to make sure we don't repeat a number (if a number is repeated, it will turn true in the next loop
    for j in firstRepeatAgain where i == j {
        var found2 = false
        for k in firstRepeatAgain2 where k == j {
            if !numsThreeTimes.contains(k)  { //there isn't much of a way to keep from adding instances of numbers more without convoluted loops farther in, so just give up and use contain.
                numsThreeTimes.append(k)
            }
            found2 = true
        }
        if !found2{
            firstRepeatAgain2.append(j)
        }
        
        found1 = true
    }
    if !found1 {
    firstRepeatAgain.append(i)
    }
}




var repeatedNumbers = Set<Int>()
var repeatedTwiceNumbers = Set<Int>()
var repeatedThriceNumbers = Set<Int>()
for number in someRepeatsAgain {
    if repeatedNumbers.contains(number) {
        if repeatedTwiceNumbers.contains(number) {
            repeatedThriceNumbers.insert(number)
        } else {
            repeatedTwiceNumbers.insert(number)
        }
    } else {
        repeatedNumbers.insert(number)
    }
}

print(repeatedThriceNumbers)
*/

//19)
//Identify if there are 3 integers in the following array that sum to 10.  If so, print them.
//If there are multiple triplets, print all possible triplets.


var tripleSumArr = [-20,-14, -8, -5,-3,-2,1,2,3,4,9,15,20,30]



let sum = 10

for (i, value1) in tripleSumArr.enumerate() {
    for (k, value2) in tripleSumArr.enumerate() where i != k {
        for (j, value3) in tripleSumArr.enumerate() where j != k && j != i {
            var sumOfThree = value1 + value2 + value3
            if sumOfThree == sum {
                print(value1, value2, value3)
            }
        }
    }
}






