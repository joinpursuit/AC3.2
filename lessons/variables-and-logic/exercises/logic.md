# Logic

#### Exercise 1.
What do each of the following expressions evaluate to?
```
a. 3 < 12.3
true
b. 9 == 2
false
c. "Hello!" == "Hello!"
true
d. 19.0 >= 19.0
true
e. 9 > 7 && 7 < 10
true
```

#### Exercise 2.
What do each of the following expressions evaluate to?
```
a. false || true
true
b. false && true
false
c. !false
true
d. !!!true
false
e. !(true && true)
false
```
#### Exercise 3.
What do each of the following expressions evaluate to?
```
a. 3 == 2 || 9 == 9
true
b. !(3 > 3)
true
c. !(true || false)
false
d. (4 < 3 || 4 > 3) && ("Message: " == "Message: ")
true
e. !(3 != 3)
true
```
#### Exercise 4.
What do each of the following expressions evaluate to?
```
a. !(4 + 3 < 2 * 4)
false
b. !(1 + 1 != 2) && !(3 >= 3)
true
c. (3 < 2 || (0 < 1 && 3 >= 3)) && true
true
d. !!(!!true && !!false)
false
e. true && (true && (true && (true || false)))
true
```
#### Exercise 5.
Identify which variables are correct/incorrect. Change the variable value and/or declaration if it is incorrect.
```
a. let nameOfPrincipal: Character = "Mrs. Watkins"
let nameOfPrincipal: String = "Mrs. Watkins"
b. var temperatureOutside: Int = 90.7
var temperatureOutside: Double = 90.7
c. var isSummer: String = false
var isSummer: Bool = false
d. let whiteHouseAddress: Int + String = 1600 + "Pennsylvania Ave"
correct?
e. var peopleAtParty: Double = "95"
var peopleAtParty: Int = 95
```
#### Exercise 6.
The following variables are declared, fill in their value in a separate line.
```
a. var favoriteVacationSpot: String
var favoriteVacationSpot = "Paris"
b. var timesOnAPlane: Int
var timesOnAPlane = 4
c. var amHungry: Bool
var amHungry = true
d. var middleInitial: Character
var middleInitial = "E"
e. var 25dividedBy10: Double
var twentyFiveDividedBy10 = 2.5
```

#### Exercise 7.
Mad-Libs. Add a value to the declared variables below. Insert the variables (already in correct order) inside the string  __madLib__ and print.
```
var geographicLocation: String
geographicLocation = "Antartica"
var adjective1: String
adjective1 = "slimy"
var pluralNoun1: String
pluralNoun1 = "cats"
var adjective2: String
adjective2 = "curly"
var pluralNoun2: String
pluralNoun2= "thimbles"
var number1: Int
number1 = 67
var number2: Int
number 2 = 4
var articleOfClothing: String
articleOfClothing = "bloomers"

var madLib = "Here is tomorrow's weather report for \()
and vicinity. Early tomorrow, a \()-front will
collide with a mass of hot \() moving from the
north. This means we can expect \() winds and
occasional \() by late afternoon. Wind velocity will
be \() miles an hour, and the high temperature should
be around \() degrees. So, if you're going out, you had
better plan on wearing your \()".
```
