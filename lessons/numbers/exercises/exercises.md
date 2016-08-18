## Numbers

#### Question 1.
What is true about __Integers__ in computers?
```
c. Integer types in computers take up a fixed amount of memory.

C

#### Question 2.
Explain why the maximum value of ```UInt8``` is equals 255. Why is the maximum value of ```Int8``` 127?

In Int8 the last byte is used to determine whether the # represented is positive or negative

#### Question 3.
Consider the constants below. Which code will compile?
```
a. let numberOfPages: Int = 500
b. let numberOfChapters = "For Whom The Bell Tolls"
c. let nameOfBook: Int = 14
d. let yearPublished = "Nineteen-thirty-five"
e. All will compile.

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
1. a += b   ------- 25
2. b -= c ------ 1
3. b * (c + a) ------- 120
4. (b * c) + a ----- 40
5. b %= a ------ IDK 
6. b %= c ------ 1
```

#### Question 5.
What are the values of ```div``` and ```div2``` below? Are they equal?
```
let div = 11 / 3
let div2 = 11.0 / 3.0

No
```

#### Question 6.
Given ```var number = 7.5```. What can be inferred about __number__?
```
a. number is a float variable
b. number is a double variable
c. number is a 32-bit floating point number
d. not enough information to infer about number's type

b. number is a double variable```

#### Question 7.
Without using Playground, will the below code print?
```
let twelve: Double = 12.0
let thirteen: Float = 13.0

print(twelve + thirteen)
```
no because they are two different types

#### Question 8.
Write the following numbers in binary representation:
```
a. 25 - 11001
b. 100 - 1100100
c. 65 - 1000001
d. 255
```

#### Question 8.
Which of the following numbers can't be assigned to an Int8, and why?:
```
a. 25 - 
b. 100 - 
c. 65 - 
d. 255 - 

Answer: 255
```

#### Question 9.

What integer types could you use for the offending value in Question 8 that would not produce an error?:

#### Question 10.

What are the differences between ```Double``` and ```Int``` in the numbers they can represent and how they store them?

#### Question 11.

What are the differences between ```Float``` and ```Double```?

#### Question 12.

What will the following code do?:

```swift
var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + extraWidth
```

#### Question 13.

Alter the code in Question 12 to do what we want it to.
