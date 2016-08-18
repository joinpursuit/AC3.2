## Numbers

#### Question 1.
What is true about __Integers__ in computers?
```
a. Integers must have a positive or negative sign always.
b. The maximum value for Integers is +∞.
c. Integer types in computers take up a fixed amount of memory. TRUE
d. Integers may contain decimals.
```

#### Question 2.
Explain why the maximum value of ```UInt8``` is equals 255. 

Why is the maximum value of ```Int8``` 127? 8 bits can only add up to 255 max in an unsigned integer. A signed integer can only add up to 127 because the leftmost bit is reserved for negative values.

#### Question 3.
Consider the constants below. Which code will compile?
```
a. let numberOfPages: Int = 500 
b. let numberOfChapters = "For Whom The Bell Tolls"
c. let nameOfBook: Int = 14
d. let yearPublished = "Nineteen-thirty-five"
e. All will compile. TRUE
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
1. a += b // 25
2. b -= c // 1
3. b * (c + a) // 120
4. (b * c) + a // 40
5. b %= a // 5
6. b %= c // 1
```

#### Question 5.
What are the values of ```div``` and ```div2``` below? Are they equal? // No they're not equal because div2 will have the remainder reflected in the mantissa, whereas div as an Int will drop the remainder when it's compiled.
```
let div = 11 / 3
let div2 = 11.0 / 3.0
```

#### Question 6.
Given ```var number = 7.5```. What can be inferred about __number__?
```
a. number is a float variable
b. number is a double variable TRUE
c. number is a 32-bit floating point number
d. not enough information to infer about number's type
```

#### Question 7.
Without using Playground, will the below code print? // It will not compile
```
let twelve: Double = 12.0
let thirteen: Float = 13.0

print(twelve + thirteen)
```

#### Question 8.
Write the following numbers in binary representation:
```
a. 25 // 00011001
b. 100 // 01100100
c. 65 // 01000001
d. 255 // 11111111
```

#### Question 8.
Which of the following numbers can't be assigned to an Int8, and why?:
```
a. 25 
b. 100
c. 65
d. 255 // This one, because it exceeds an unsigned integer's max value of 127
```

#### Question 9.

What integer types could you use for the offending value in Question 8 that would not produce an error?: // UInt8, UInt16, UInt32, UInt64, UInt, Int16, Int32, Int64, Int 

#### Question 10.

What are the differences between ```Double``` and ```Int``` in the numbers they can represent and how they store them? // Integers are whole numbers with no decimal value, whereas Doubles do. Doubles store their value in a base system. 

#### Question 11.

What are the differences between ```Float``` and ```Double```? // Float is 32 bits in size, and Double is 64 bits.

#### Question 12.

What will the following code do?: // It will crash

```swift
var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + extraWidth
```

#### Question 13.

Alter the code in Question 12 to do what we want it to. 

```swift
var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + Double(extraWidth)
```
