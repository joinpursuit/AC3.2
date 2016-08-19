////: Playground - noun: a place where people can play

import UIKit


//Question 1.

What is true about Integers in computers?

c. Integer types in computers take up a fixed amount of memory.


//Question 2.

Explain why the maximum value of UInt8 is equals 255. Why is the maximum value of Int8 127?

8-bits allows for 255 numbers. Int8 has a max value of only 127 because half of the memmory is used for negative numbers whereas UInt8 has all spaces available for positive numbers. The textbook states that the relationship between the min and max numbers of signed and unsigned numbers is: UInt8.max = Int8.max + |Int8.min|


//Question 3.

Consider the constants below. Which code will compile?

e. All will compile.


//Question 4.

Evaluate the following: Given:

var a = 20
var b = 5
var c = 4
Compute:

1. a += b
2. b -= c
3. b * (c + a)
4. (b * c) + a
5. b %= a
6. b %= c

Answer
1. 25
2. 1
3. 120
4. 40
5. 5
6. 1

//Question 5.

What are the values of div and div2 below? Are they equal?

let div = 11 / 3
let div2 = 11.0 / 3.0

div = 3
div = 3.6666...7
The values are not equal because integer division truncates the remainder.


//Question 6.

Given var number = 7.5. What can be inferred about number?

b. number is a double variable

//Question 7.

Without using Playground, will the below code print?

let twelve: Double = 12.0
let thirteen: Float = 13.0

print(twelve + thirteen)
It should not print because it is trying to combine two different types.

//Question 8.
//
//Write the following numbers in binary representation:

a. 25= 00011001
b. 100= 01100100
c. 65= 01000001
d. 255= 11111111

//Question 9.

Which of the following numbers can't be assigned to an Int8, and why?:

d. 255
255 cannot be stored to Int8 because Int8.max == 127. UInt8.max == 255.

//Question 10.

What integer types could you use for the offending value in Question 8 that would not produce an error?:
Int16, Int32, Int64, UInt8, UInt16, UInt32, UInt64

//Question 10.

What are the differences between Double and Int in the numbers they can represent and how they store them?

Int can only store whole numbers, whether they are positive or negative. Double, on the other hand represents
decimals.

//Question 11.

What are the differences between Float and Double?

Double is more precise than float and has more memory to store more decimals.

//Question 12.

What will the following code do?:

var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + extraWidth

It will print an error message because width and extraWifth are not the same data type

//Question 13.

Alter the code in Question 12 to do what we want it to.

var width: Double = 48.8
var extraWidth: Float = 10.5

let totalWidth = width + Double(extraWidth)