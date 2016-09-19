## Numbers

#### Question 1.
What is true about __Integers__ in computers?
```
c. Integer types in computers take up a fixed amount of memory.
```

#### Question 2.
Explain why the maximum value of ```UInt8``` is equals 255. Why is the maximum value of ```Int8``` 127?

UInt8 is an unsigned integer and contains only positive numbers. Therefore it takes less memory because it's not accounting for the negative numbers.
The maximum value of Int8 contains negative and positive numbers so it's max value will be less.

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
1. a += b

a = 25

2. b -= c

b = 1

3. b * (c + a)

120

4. (b * c) + a

40

5. b %= a

b = 5

6. b %= c
```
b = 1


#### Question 5.
What are the values of ```div``` and ```div2``` below? Are they equal?
```
let div = 11 / 3
let div2 = 11.0 / 3.0
```

div = 3
div2 = 3.66666666667
They are not equal because div and div2 are different types.


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
```

This code will not print because they are different types.


#### Question 8.
Write the following numbers in binary representation:
```
a. 25

0b11001

b. 100

0b1100100

c. 65

0b1000001

d. 255

0b11111111

```

#### Question 8.
Which of the following numbers can't be assigned to an Int8, and why?:
```

d. 255
```

#### Question 9.

What integer types could you use for the offending value in Question 8 that would not produce an error?:


Int16, Int32, Int64, UInt16, UInt32, UInt64, UInt8

#### Question 10.

What are the differences between ```Double``` and ```Int``` in the numbers they can represent and how they store them?


Double can use Decimal values unlike Integers. Doubles use more memory because they are more complex of numbers.

#### Question 11.

What are the differences between ```Float``` and ```Double```?


Doubles use 64 bits to store numbers whereas Floats use 32 bits.

#### Question 12.

What will the following code do?:

```swift
var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + extraWidth

This code will hit an error because the two variables are of different types.


```

#### Question 13.

Alter the code in Question 12 to do what we want it to.



var width: Double = 48.8
var extraWidth: Double = 10.5

let totalWidth = width + extraWidth

