## Numbers

#### Question 1.
What is true about __Integers__ in computers?
Answer: c.
```
a. Integers must have a positive or negative sign always.
b. The maximum value for Integers is +∞.
c. Integer types in computers take up a fixed amount of memory.
d. Integers may contain decimals.
```

#### Question 2.
Explain why the maximum value of ```UInt8``` is equals 255. Why is the maximum value of ```Int8``` 127?
The UInt8 has no assigned integers, so it can store twice the amount of values of Int8. 

#### Question 3.
Consider the constants below. Which code will compile?
Answer: e.
```
a. let numberOfPages: Int = 500
b. let numberOfChapters = "For Whom The Bell Tolls"
c. let nameOfBook: Int = 14
d. let yearPublished = "Nineteen-thirty-five"
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
```swift
1. a += b
//= 25
2. b -= c
//= 1
3. b * (c + a)
//= 120
4. (b * c) + a
//= 40
5. b %= a
//= 5
6. b %= c
//= 1
```

#### Question 5.
What are the values of ```div``` and ```div2``` below? Are they equal?
```
let div = 11 / 3
//Answer = 3
let div2 = 11.0 / 3.0
//Answer = 3.66666666
//They are not eqaul.
```

#### Question 6.
Given ```var number = 7.5```. What can be inferred about __number__?
Answer = c.
```
a. number is a float variable
b. number is a double variable
c. number is a 32-bit floating point number
d. not enough information to infer about number's type
```

#### Question 7.
Without using Playground, will the below code print?
Answer: error because the type of the two constants are not the same
```swift
let twelve: Double = 12.0
let thirteen: Float = 13.0

print(twelve + thirteen)
```

#### Question 8.
Write the following numbers in binary representation:
```swift
a. 25
11001
b. 100
1100100
c. 65
1000001
d. 255
1111111
```

#### Question 8.
Which of the following numbers can't be assigned to an Int8, and why?:
Answer = d because it exceeds the bit size limit
```swift
a. 25
b. 100
c. 65
d. 255
```

#### Question 9.

What integer types could you use for the offending value in Question 8 that would not produce an error?:
Answer = UInt8

#### Question 10.

What are the differences between ```Double``` and ```Int``` in the numbers they can represent and how they store them?
Answer = Double are stored in binary multiplied with a decimal with a base 10 and Int is just stored in binary.

#### Question 11.

What are the differences between ```Float``` and ```Double```?
Answer = Double is more accurate when representing decimal numbers. Double stored is stored in Int64 while Float is stored in Int32.

#### Question 12.

What will the following code do?:
Answer = The code followering will produce an error message.
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