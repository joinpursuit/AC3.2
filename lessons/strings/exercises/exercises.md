### Strings Exercises

#### S1.
Without using string interpolation, print out a string that combines myGreeting and myName.

```swift
let myGreeting = "Hello, "
let myName = "Ben"
var string = myGreeting + myName
print(string)
```
#### S2.
Write code that prints out myArray as a single string separated by spaces.

```swift
let myArray = ["Hi", "there,", "how","is","it","going?"]
for A in myArray{
    print(A, terminator:" ")
}
```
#### S3.
Write code that prints out all the numbers from 1 to 10 as a single string.  (Hint: the String() function can convert an int to a string)
```swift
for i in 1...10 {
    print("\(i)", terminator: " ")
}
```

#### S4.
Write code that prints out all the even numbers from 5 to 51 as a single string.
```swift
for i in 5...51 where i%2 == 0{
    print("\(i)", terminator: " ")
}
```
#### S5.
Write code that prints out every number ending in 4 between 1 and 60 as a single string.
```swift
for i in 1...60 where i%10 == 4{
    print("\(i)", terminator: " ")
}
```

#### S6.
Print each character in the string ```Hello world!```
```swift
let theString = "Hellow world!"
for character in theString.characters {
    print(character)
}
```

#### S7.
Using '.characters' and loop, print the last character in the string below
```swift
let myStringSeven = "Hello world!"
let start = myStringSeven.startIndex
let toPosition = 11
let end = start.advancedBy(toPosition)
print(myStringSeven[end])
```

#### S8.
Write code that switches on a string.  If the string's length is even, print out every character.  If the string's length is odd, print out every other character
```swift
let stringTo = "How are you??"
let beginning = stringTo.startIndex
let ending = stringTo.endIndex
let theOne = beginning.advancedBy(10)
print(stringTo[theOne])
let count = stringTo.characters.count

switch count{
case _ where stringTo.characters.count % 2 == 0:
    for character in stringTo.characters {
        print(character)
}
default:
    var i = 0
    while i <= string.characters.count{
        print (stringTo[stringTo.startIndex.advancedBy(i)])
        i += 2
    }
}
```

#### S9.
Initialize a String with a character. Show that it is a Character, and not another String, you're using
to initialize it.

### Unicode exercises

#### U1.
Build five pairs of canonically equivalent strings, the first of each being a pre-composed character and
the second being one that uses combinable unicode scalars. Show that they are equivalent.

Refer to this [Unicode Table](http://unicode-table.com/en/).

```swift
var cPlusCedilla = "\u{0063}\u{0327}"
var cWithCedilla = "\u{00E7}"
cPlusCedilla == cWithCedilla

var ePlusDiaeresis = "\u{0065}\u{0308}"
var eWithDiaeresis = "\u{00EB}"
ePlusDiaeresis == ePlusDiaeresis

var oPlusAcute = "\u{006F}\u{0301}"
var oWithAcute = "\u{00F3}"
oPlusAcute == oPlusAcute

var nPlusCaron = "\u{006E}\u{030C}"
var nWithCaron = "\u{0148}"
nPlusCaron == nWithCaron

var aPlusTilda = "\u{0041}\u{0303}"
var aWithTilda = "\u{00C3}"
aPlusTilda == aWithTilda
```

#### U2.
* Using only Unicode, print out "HELLO WORLD!"
```swift
var helloWorld = "\u{0048}\u{0065}\u{006c}\u{006c}\u{006F}\u{0020}\u{0057}\u{006F}\u{0072}\u{006c}\u{0064}\u{0021}"
print(helloWorld)
```
#### U3.
* Using only Unicode, print out your name.
```swift
var myName
var name = "\u{0041}\u{006E}\u{0061}"
print(name)

```

#### U4
* (Bonus) Using only Unicode, print "Hello World" in another language.
```swift
var helloWorldInChinese = "\u{4F60}\u{597D}\u{FF0C}\u{4E16}\u{754C}\u{0021}"
```

#### U5.
Print the below flower box using the following information.
* The unicode number for ⚘ is U-2698
* The top and bottom of the box are represented by dashes and the rows are ```|```
* Use the __terminator__ argument in your print statements to print on the same line.
* Hint: It may be useful to try printing out a box of just one character to start then work your way from there.

```swift
- - - - - - - - - - -
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
| ⚘ | ⚘ | ⚘ | ⚘ | ⚘ |
- - - - - - - - - - -

var dash: Character = "\u{2013}"
var flower = "\u{007c}\u{0020}\u{2698}"

var i = 1
while i <= 10 {
    if i == 1 || i == 10{
        var dashCount = 1
        while dashCount <= 11 {
            print(dash, terminator: " ")
            dashCount += 1
        }
        print()
    }else{
        var flowerCount = 1
        while flowerCount <= 5 {
            print(flower, terminator: " ")
            flowerCount += 1
        }
        print("\u{007c}")
    }
    i += 1
}

```
