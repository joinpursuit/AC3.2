### Strings Exercises

#### S1.
Without using string interpolation, print out a string that combines myGreeting and myName.

```
let myGreeting = "Hello, "
let myName = "Ben"
var combinedString = myGreeting + myName
print(combinedString)
```
#### S2.
Write code that prints out myArray as a single string separated by spaces.

```swift
let myArray = ["Hi", "there,", "how","is","it","going?"]
for all in myArray {
print(all, terminator: " ")
}

```
#### S3.
Write code that prints out all the numbers from 1 to 10 as a single string.  (Hint: the String() function can convert an int to a string)

```swift
var stringPlaceholder = ""
for range in 1...10 {
stringPlaceholder += "\(String(range)) "
}
print(stringPlaceholder)
```

#### S4.
Write code that prints out all the even numbers from 5 to 51 as a single string.

```swift
var evenPlaceholder = ""
for even in 5...51 where even % 2 == 0 {
evenPlaceholder += "\(String(even)) "
}
print(evenPlaceholder)
```

#### S5.
Write code that prints out every number ending in 4 between 1 and 60 as a single string.

```swift
var fourPlaceholder = ""
for four in 1...60 where four % 10 == 4 {
fourPlaceholder += "\(String(four)) "
}
print(fourPlaceholder)
```

#### S6.
Print each character in the string ```Hello world!```

```swift
var helloWorld = "Hello world!"
for char in helloWorld.characters {
print(char)
}
```

#### S7.
Using '.characters' and loop, print the last character in the string below
```swift
let myStringSeven = "Hello world!"
for last in myStringSeven.characters where last == myStringSeven[myStringSeven.endIndex.advancedBy(-1)] {
print(last)
}
```

#### S8.
Write code that switches on a string.  If the string's length is even, print out every character.  If the string's length is odd, print out every other character

```swift
var ourString = "Gotta print out every other character!"
switch ourString {
case let what where ourString.characters.count % 2 == 0:
print(ourString)
default:
var end = ourString.endIndex.advancedBy(-1)
var cursor = ourString.startIndex.advancedBy(0)
while cursor < end {
print(ourString[cursor], terminator: "")
cursor = cursor.advancedBy(2)
}
}
```

#### S9.
Initialize a String with a character. Show that it is a Character, and not another String, you're using
to initialize it.

```swift
let myCharacter: Character = "I"
var sexyBuns = myCharacter
sexyBuns.dynamicType
```

### Unicode exercises

#### U1.
Build five pairs of canonically equivalent strings, the first of each being a pre-composed character and
the second being one that uses combinable unicode scalars. Show that they are equivalent.

```swift
let aAcutePrecomposed = "\u{00E1}"
let aAcuteDecomposed = "\u{0061}\u{0301}"
```
```swift
let nTildePrecomposed = "\u{00F1}"
let nTildeDecomposed = "\u{006e}\u{0303}"
```
```swift
let eAcutePrecomposed = "\u{00E9}"
let eAcuteDecomposed = "\u{0065}\u{0301}"
```
```swift
let iAcutePrecomposed = "\u{00EC}"
let iAcuteDecomposed = "\u{0069}\u{0301}"
```
```swift
let oUmlatPrecomposed = "\u{d6}"
let oUmlatDecomposed = "\u{004f}\u{0308}"
```

Refer to this [Unicode Table](http://unicode-table.com/en/).

#### U2.
* Using only Unicode, print out "HELLO WORLD!"
print("\u{0048}\u{0045}\u{004c}\u{004c}\u{004f} \u{0057}\u{004f}\u{0052}\u{004c}\u{0044}")

#### U3.
* Using only Unicode, print out your name.


#### U4
* (Bonus) Using only Unicode, print "Hello World" in another language.

#### U5.
Print the below flower box using the following information.
* The unicode number for ⚘ is U-2698
* The top and bottom of the box are represented by dashes and the rows are ```|```
* Use the __terminator__ argument in your print statements to print on the same line.
* Hint: It may be useful to try printing out a box of just one character to start then work your way from there.

```
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

```
```
