//: Playground - noun: a place where people can play

import UIKit

//for i in 1...150 {
//    print(i)
//}

//for i in 141..<159 {
//    print(i)
//}
//
//for i in 15...80 where i%2 == 0 {
//    print(i)
//}
//
//for i in 19...51 where i%2 != 0 {
//    print(i)
//}
//
//for i in 1...100 where i%5 == 0 && i%2 != 0 {
//    print(i)
//}
//
//for i in 1...40 {
//    if i%10 != 7{
//    continue
//    } else {
//        print(i)
//    }
//}
//
//for i in 20...150 where i%3 == 0{
//    print(i)
//}

//for i in 20...150 where i%3 == 0 && i%2 == 0{
//    print(i)
//}

//for i in 20...150 {
//    if i%10 != 4 {
//    continue
//    } else {
//        print(i)
//    }
//}

for i in 20...150 {
    if i == 31 || i == 35 || i%100 == 31 || i%100 == 35 || i >= 40 && i <= 60 || i >= 140 && i<=160 {
        print(i)
    }
}

// C) 1. It is an infinite loop
// C) 2. change > 3 < 9
// C) 3. change < 9 to < 10001
// C) 4. var i = 5
//       while (i < 1001) {
//       i += 1
//       if i == 1000 {
//          print(i)
//          }
//       }
// C) 5. I guess you meant repeat? Repeat will run at least once, while the top version will run if and only if the condition is met.
// C) 6. There is no difference, assuming you meant repeat. But do won't run

// D) 1. Break ends the loop, while continue goes back to the start of the loop and runs through it again
// D) 2. a. It only prints 5 and 6
// D) 2. b. The loop ends early and never prints anything
// D) 2. Bonus. It prints when either x or y are not 2's

// E) 1. for x in 0...10 {
//          for y in 0...10 {
//              print("(\(x), \(y))")
//          }
//       }
// E) 2. for x in 0...10 where x%2 == 0 {
//          for y in 0...10 where x%2 == 0 {
//             print("(\(x), \(y))")
//         }
//      }
// E) 3. for x in 0...10 {
//          for y in 0...10 where (x-y) >= 5 || (y-x) >= 5 {
//              print("(\(x), \(y))")
//          }
//      }
// E) 4. for x in 0...10 {
//          for y in 0...10 where (x*y) < 6 {
//              print("(\(x), \(y))")
//          }
//      }
// E) 5. for x in 0...10 {
//          for y in 0...10 where x != y {
//              print("(\(x), \(y))")
//          }
//      }
