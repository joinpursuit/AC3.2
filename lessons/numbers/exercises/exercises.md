## Numbers

#### Question 1.
What is true about __Integers__ in computers?
```
a. Integers must have a positive or negative sign always.
b. The maximum value for Integers is +∞.
c. Integer types in computers take up a fixed amount of memory.
d. Integers may contain decimals.
```
Ans: C

#### Question 2.
Explain why the maximum value of ```UInt8``` is equals 255. Why is the maximum value of ```Int8``` 127?

Ans: UInt does not incorporate negitive numbers and therefore can handle twice the max value of Int.

#### Question 3.
Consider the constants below. Which code will compile?
```
a. let numberOfPages: Int = 500
b. let numberOfChapters = "For Whom The Bell Tolls"
c. let nameOfBook: Int = 14
d. let yearPublished = "Nineteen-thirty-five"
e. All will compile.
```
Ans: E

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
1. a += b           == 25
2. b -= c           == 1
3. b * (c + a)      == 120
4. (b * c) + a      == 40
5. b %= a           == 5
6. b %= c           == 1
```

#### Question 5.
What are the values of ```div``` and ```div2``` below? Are they equal?
```
let div = 11 / 3
let div2 = 11.0 / 3.0

Ans:
div == 3
div2 == 3.6666666667
...div and div2 are not equal.

```

#### Question 6.
Given ```var number = 7.5```. What can be inferred about __number__?
```
a. number is a float variable
b. number is a double variable
c. number is a 32-bit floating point number
d. not enough information to infer about number's type

Ans: B

```

#### Question 7.
Without using Playground, will the below code print?
```
let twelve: Double = 12.0
let thirteen: Float = 13.0

print(twelve + thirteen)

Ans: No.
```

#### Question 8.
Write the following numbers in binary representation:
```
a. 25   == 00011001
b. 100  == 01100100
c. 65   == 01000010
d. 255  == 11111111
```

#### Question 8.
Which of the following numbers can't be assigned to an Int8, and why?:
```
a. 25   == 00011001
b. 100  == 01100100
c. 65   == 01000010
d. 255  == 11111111

Ans: D, because the max value Int8 can store is 127.  
```

#### Question 9.

What integer types could you use for the offending value in Question 8 that would not produce an error?:

Ans: Uint8, Int32, UInt32, Int64, UInt64

#### Question 10.

What are the differences between ```Double``` and ```Int``` in the numbers they can represent and how they store them?

Ans: Int refers to a whole number and Double to a number with a decimal point. Ints use their bits to maximize the range of the numbers they can store whereas Doubles use theirs to maximize precision with mantissa and exponent.

#### Question 11.

What are the differences between ```Float``` and ```Double```?

Ans: Both are floating point numbers, Floats use 32 bits, Doubles use 64 bits and are infered as the type for numbers with a decimal point.

#### Question 12.

What will the following code do?:

```swift
var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + extraWidth

Ans: It will not run because Double and Float are different types.
```

#### Question 13.

Alter the code in Question 12 to do what we want it to.

Ans:
let totalWidth = width + Double(extraWidth)

