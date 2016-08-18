## Numbers

#### Question 1.
What is true about __Integers__ in computers?
```
c. Integer types in computers take up a fixed amount of memory.

```

#### Question 2.
Because in Int, the place value that, in Uint, is equal to 2 to the eighth power is used instead to indicate the sign of the number. In unsigned ints, all 8 bits are used for indicating place value, so it goes all the way up to 2 to the eighth. Int only goes up to 2 to the seventh.

#### Question 3.
Consider the constants below. Which code will compile?
```
e. All will compile.
```

#### Question 4.
Evaluate the following:
Given:
```
var a = 20
var b = 5
var c = 4
```
Compute:
```
1. a += b == 25
2. b -= c == 1
3. b * (c + a) == 24 * 5 == 120
4. (b * c) + a == 40
5. b %= a == 5
6. b %= c == 1
```

#### Question 5.
What are the values of ```div``` and ```div2``` below? Are they equal?
```
No, they're different types and decimals are stored in a less exact way than integers
```

#### Question 6.
Given ```var number = 7.5```. What can be inferred about __number__?
```
b. number is a double variable
```

#### Question 7.
Without using Playground, will the below code print?
```
let twelve: Double = 12.0
let thirteen: Float = 13.0

print(twelve + thirteen)

Error
```

#### Question 8.
Write the following numbers in binary representation:
```
a. 25 == 
b. 100 == 2
c. 65
d. 255 == 10000000
```

#### Question 8.
Which of the following numbers can't be assigned to an Int8, and why?:
```
a. 25
b. 100
c. 65
d. 255

Anything over 127 can't be assigned to Int8, because Int8 only goes up to 127
```

#### Question 9.

What integer types could you use for the offending value in Question 8 that would not produce an error?:

You could use UInt, or an Int with a larger bit limit, or plain Int

#### Question 10.

What are the differences between ```Double``` and ```Int``` in the numbers they can represent and how they store them?

Double represents decimal numbers using 64 bits of place value precision, in a way similar to scientific notation, while Int represents whole numbers using binary 

#### Question 11.

What are the differences between ```Float``` and ```Double```?

Float has 32 bits of precision, while Double has 64 bits. Double is the default type for decimals in Swift.

#### Question 12.

What will the following code do?:

```swift
var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + extraWidth

It will break. You can't do operations on different types like that.
```

#### Question 13.

Alter the code in Question 12 to do what we want it to.

let totalWidth = width + Double(extraWidth)