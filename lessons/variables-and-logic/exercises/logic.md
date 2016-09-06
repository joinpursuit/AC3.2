# Logic

#### Exercise 1.
What do each of the following expressions evaluate to?
```
a. 3 < 12.3 ->(TRUE)
b. 9 == 2 ->(FALSE)
c. "Hello!" == "Hello!" ->(TRUE)
d. 19.0 >= 19.0 ->(TRUE)
e. 9 > 7 && 7 < 10 ->(TRUE)
```

#### Exercise 2.
What do each of the following expressions evaluate to?
```
a. false || true ->(TRUE)
b. false && true ->(FALSE)
c. !false ->(TRUE)
d. !!!true ->(TRUE)
e. !(true && true) ->(FALSE)
```
#### Exercise 3.
What do each of the following expressions evaluate to?
```
a. 3 == 2 || 9 == 9 ->(TRUE)
b. !(3 > 3) ->(TRUE)
c. !(true || false) ->(FALSE)
d. (4 < 3 || 4 > 3) && ("Message: " == "Message: ") ->(TRUE)
e. !(3 != 3) ->(TRUE)

```
#### Exercise 4.
What do each of the following expressions evaluate to?
```
a. !(4 + 3 < 2 * 4) ->(TRUE)
b. !(1 + 1 != 2) && !(3 >= 3) ->(FALSE)
c. (3 < 2 || (0 < 1 && 3 >= 3)) && true ->(FALSE)
d. !!(!!true && !!false) ->(FALSE)
e. true && (true && (true && (true || false))) ->(TRUE)
```
#### Exercise 5.
Identify which variables are correct/incorrect. Change the variable value and/or declaration if it is incorrect.
```
a. let nameOfPrincipal: Character = "Mrs. Watkins" ->(CORRECT)
b. var temperatureOutside: Int = 90.7 ->(INCORRECT: var temperatureOutside: Double = 90.7)
c. var isSummer: String = false ->(INCORRECT: var isSummer: Bool = false)
d. let whiteHouseAddress: Int + String = 1600 + "Pennsylvania Ave" ->(INCORRECT: let whiteHouseAddress: String = "1600 Pennsylvania Ave")
e. var peopleAtParty: Double = "95" ->(INCORRECT: var peopleAtParty: Int = 94)
```
#### Exercise 6.
The following variables are declared, fill in their value in a separate line.
```
a. var favoriteVacationSpot: String
favoriteVacationSpot = "Hawaii"
b. var timesOnAPlane: Int
timesOnAPlane = 0
c. var amHungry: Bool
amHungry = true
d. var middleInitial: Character
middleInitial = "Y"
e. var TwentyFiveDividedBy10: Double
TwentyFiveDividedBy10 = 2.5
```

#### Exercise 7.
Mad-Libs. Add a value to the declared variables below. Insert the variables (already in correct order) inside the string  __madLib__ and print.
```
var geographicLocation: String = "Brooklyn, N.Y."
var adjective1: String = "cold"
var pluralNoun1: String = "currents"
var adjective2: String = "strong"
var pluralNoun2: String = "showers"
var number1: Int = 12
var number2: Int = 34
var articleOfClothing: String = "coat"

var madLib = "Here is tomorrow's weather report for \(geographicLocation)
and vicinity. Early tomorrow, a \(adjective1)-front will
collide with a mass of hot \(pluralNoun1) moving from the
north. This means we can expect \(adjective2) winds and
occasional \(pluralNoun2) by late afternoon. Wind velocity will
be \(number1) miles an hour, and the high temperature should
be around \(number2) degrees. So, if you're going out, you had
better plan on wearing your \(articleOfClothing)".
```
