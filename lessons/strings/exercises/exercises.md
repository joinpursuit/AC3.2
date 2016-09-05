### Strings Exercises

#### S1.
Without using string interpolation, print out a string that combines myGreeting and myName.

```
let myGreeting = "Hello, "
let myName = "Ben"

```swift
let myGreeting = "hello"
let myName = "Ben"
var newStr = myGreeting + " " + myName
print(newStr)
```

```
#### S2.
Write code that prints out myArray as a single string separated by spaces.

```swift
let myArray = ["Hi", "there,", "how","is","it","going?"]
var string: String = ""

for i in myArray {
string += ("\(i) ")
}
print(string)
```

```swift
let myArray = ["Hi", "there,", "how","is","it","going?"]
```
#### S3.
Write code that prints out all the numbers from 1 to 10 as a single string.  (Hint: the String() function can convert an int to a string)

```swift
var str = ""
for i in 1...10 {
str += String(i)
}
print(str)
```

#### S4.
Write code that prints out all the even numbers from 5 to 51 as a single string.

```swift
var str = ""
for i in 5...51 where i%2==0 {
str += String(i)+","
}
print(str)
```

#### S5.
Write code that prints out every number ending in 4 between 1 and 60 as a single string.

```swift
var str = ""
for i in 1...60 where i%10==4 {
str += String(i)+","
}
print(str)
```

#### S6.
Print each character in the string ```Hello world!```

```swift
let str = "Hello World!"

for c in str.characters {
print(c)
}
```

#### S7.
Using '.characters' and loop, print the last character in the string below
```swift
let myStringSeven = "Hello world!"

```swift
var lastChar: Character = "x"
    for x in myStringSeven.characters {
    lastChar = x
    }

print(lastChar)
```

#### S8.
Write code that switches on a string.  If the string's length is even, print out every character.  If the string's length is odd, print out every other character


```swift
var str = "Coalition for Queenss"
let length = str.characters.count
let start = str.startIndex
let end = str.endIndex
let range = start..<end
var count = 0


switch length {
    case let length where length % 2 == 0:
    print(str)
    case let length where length % 2 == 1:
    while count < length {
    print(str[str.startIndex.advancedBy(count)])
    count+=2
    }
    default:
    break
}
```


#### S9.
Initialize a String with a character. Show that it is a Character, and not another String, you're using
to initialize it.

### Unicode exercises

#### U1.
Build five pairs of canonically equivalent strings, the first of each being a pre-composed character and
the second being one that uses combinable unicode scalars. Show that they are equivalent.

let name = "Tom"
let nameU = "\u{0054}\u{006F}\u{006d}"
let town = "Grays"
let townU = "\u{0047}\u{0072}\u{0061}\u{0079}\u{0073}"
let initials = "T.S."
let initialsU = "\u{0054}\u{002E}\u{0053}\u{002E}"
let shirtSize = "L"
let shirtSizeU = "\u{004C}"
let grade = "A"
let gradeU = "\u{0041}"


Refer to this [Unicode Table](http://unicode-table.com/en/).

#### U2.
* Using only Unicode, print out "HELLO WORLD!"

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
