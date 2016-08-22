### Strings Exercises

#### S1.
Without using string interpolation, print out a string that combines myGreeting and myName.

```
let myGreeting = "Hello, "
let myName = "Ben"

myGreeting + myName

```
#### S2.
Write code that prints out myArray as a single string separated by spaces.

for i in myArray {
print(i, terminator: " ")
}

```swift
let myArray = ["Hi", "there,", "how","is","it","going?"]
```
#### S3.
Write code that prints out all the numbers from 1 to 10 as a single string.  (Hint: the String() function can convert an int to a string)

for i in 1...10 {
print(String(i), terminator: "")
}

#### S4.
Write code that prints out all the even numbers from 5 to 51 as a single string.

for i in 5...51 {
if i % 2 == 0 {
print(String(i), terminator: " ")
}
}

#### S5.
Write code that prints out every number ending in 4 between 1 and 60 as a single string.

for i in 1...60 {
if i % 10 == 4 {
print(String(i), terminator: " ")
}
}

#### S6.
Print each character in the string ```Hello world!```

var str = "Hello world!"

for i in str.characters {
print(i)
}

#### S7.
Using '.characters' and loop, print the last character in the string below
```swift
let myStringSeven = "Hello world!"
```

print(myStringSeven[myStringSeven.endIndex.predecessor()])

#### S8.
Write code that switches on a string.  If the string's length is even, print out every character.  If the string's length is odd, print out every other character

var str = "hello world"
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

#### S9.
Initialize a String with a character. Show that it is a Character, and not another String, you're using
to initialize it.

var str = String("H")

for c: Character in str.characters {
print(c)
}

### Unicode exercises

#### U1.
Build five pairs of canonically equivalent strings, the first of each being a pre-composed character and
the second being one that uses combinable unicode scalars. Show that they are equivalent.

Refer to this [Unicode Table](http://unicode-table.com/en/).

var a = "\u{74}\u{6f}\u{75}\u{63}\u{68}\u{e9}"

var a2 = "\u{74}\u{6f}\u{75}\u{63}\u{68}\u{65}\u{301}"

a == a2

var b = "\u{dc}\u{62}\u{65}\u{72}"

var b2 = "\u{55}\u{308}\u{62}\u{65}\u{72}"

b == b2

var c = "\u{54}\u{fa}"

var c2 = "\u{54}\u{75}\u{301}"

c == c2

var d = "\u{c1}\u{72}\u{62}\u{6f}\u{6c}"

var d2 = "\u{41}\u{301}\u{72}\u{62}\u{6f}\u{6c}"

d == d2

var e = "\u{43}\u{6f}\u{72}\u{74}\u{e9}\u{7a}"

var e2 = "\u{43}\u{6f}\u{72}\u{74}\u{65}\u{301}\u{7a}"

e == e2

#### U2.
* Using only Unicode, print out "HELLO WORLD!"

"\u{48}\u{45}\u{4c}\u{4c}\u{4f}\u{20}\u{57}\u{4f}\u{52}\u{4c}\u{44}\u{21}"

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
