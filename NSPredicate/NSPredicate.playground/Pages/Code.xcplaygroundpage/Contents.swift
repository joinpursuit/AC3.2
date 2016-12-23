//: Playground - noun: a place where people can play

import UIKit

// must be Key-Value Coding compliant
// you get that for free by subclassing NSObject
// because all properties in Swift are automatically kv-coding compliant
class Person : NSObject {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
     override var description: String {
        return "\(firstName) \(lastName)"
    }
}

let alice = Person(firstName: "Alice", lastName: "Smith", age: 24)
let bob = Person(firstName: "Bob", lastName: "Jones", age: 27)
let charlie = Person(firstName: "Charlie", lastName: "Smith", age: 33)
let quentin = Person(firstName: "Quentin", lastName: "Alberts", age: 31)
let people = [alice, bob, charlie, quentin]

let bobPredicate = NSPredicate(format: "firstName = 'Bob'")
let smithPredicate = NSPredicate(format: "lastName = %@", "Smith")
let thirtiesPredicate = NSPredicate(format: "age >= 30")
let charliePredicate = NSPredicate(format: "firstName = 'Charlie'")

// casting to NSArray gives us new interface
// options like filtered(using:)
// not sure it buys us anything else
let f = people.filter { bobPredicate.evaluate(with: $0) }

(people as NSArray).filtered(using: bobPredicate)

(people as NSArray).filtered(using: smithPredicate)

(people as NSArray).filtered(using: thirtiesPredicate)

let bob2 = people.filter { bobPredicate.evaluate(with: $0) }
print(bob2)


let smith = people.filter { (p: Person) -> Bool in
    return smithPredicate.evaluate(with: p)
}
print(smith)

let smith2 = people.filter { smithPredicate.evaluate(with: $0) }
print(smith2)


let dataSource = [
    "Domain CheckService",
    "IMEI check",
    "Compliant about service provider",
    "Compliant about TRA",
    "Enquires",
    "Suggestion",
    "SMS Spam",
    "Poor Coverage",
    "Help Salim"
]

let searchString = "om"
let predicate = NSPredicate(format: "SELF contains %@", searchString)
let searchDataSource = dataSource.filter { predicate.evaluate(with: $0) }
print(searchDataSource)


let genrePredicate = NSPredicate(format: "genre == %@", "drama")
let dramas = movies.filter { genrePredicate.evaluate(with: $0) }
//print(dramas)

let deeperPredicate = NSPredicate(format: "%K != nil", "nested_movie.genre")
let deep = movies.filter { deeperPredicate.evaluate(with: $0) }
//print(deep)
    
let sigourney = NSPredicate(format: "ANY #cast == 'Sigourney Weaver'")
let sigourneyMovies = movies.filter { sigourney.evaluate(with: $0) }
print (sigourneyMovies)
for m in sigourneyMovies {
    print("\(m["name"]!), \(m["cast"]!)")
}

//LIKE means when making this comparison, make wildcards
//* means any number of wildcards after that
//ANY is whatever meets that
//NONE is the inverse of ANY ;so whatever doesnt meet that

let JPredicate = NSPredicate(format: "ANY %K LIKE %@", "cast", "J*")

let JMovies = movies.filter { JPredicate.evaluate(with: $0) }

for m in JMovies {
    print("\(m["name"]), \(m["cast"]!)")
}
















//Trying same thing with subQuery

//Goes into the 1st value at that level and then restarts and subQueries again with the next parameter value, then sets the next parameter as the value name to represent that value
let sigourneySubquery = NSPredicate(format: "SUBQUERY(#cast, $x, $x beginswith 'S').@count > 0")
let sigourneyBySubquery = movies.filter { sigourneySubquery.evaluate(with: $0) }
print(sigourneySubquery)

/*

 let sigourneySubquery = NSPredicate(format: "SUBQUERY(casts, $#cast, $#cast contains 'Sigourney').@count > 0")
 let sigourneyBySubquery = movies.filter { sigourneySubquery.evaluate(with: $0) }
 print(sigourneySubquery)
 
*/




// OMG cast has a special value??
//let keywordPredicate = NSPredicate(format: "description CONTAINS 'live'")
//let keywordPredicate = NSPredicate(format: "description CONTAINS 'it' AND locations[0] contains 'iv'")

let kv = NSPredicate(format: "ANY locations == 'Tokyo'")
let kv_result = movies.filter { kv.evaluate(with: $0) }
print (kv_result)

let locationSubPredicate = NSPredicate(format: "SUBQUERY(locations, $location, $location contains 'e').@count > 0")


//let locationSubPredicate = NSPredicate(format: "description CONTAINS 'it' and SUBQUERY(locations, $location, $location contains 'Liver').@count > 0")


let keyword = movies.filter { locationSubPredicate.evaluate(with: $0) }
//print("locationSubPredicate", keyword)

//let kv = NSPredicate(format: "subquery(locations, $location, $location in {'Tokyo', 'Liverpool'}).@count > 0")
//
//let kv_result = movies.filter { kv.evaluate(with: $0) }
//print (kv_result)

let sigPred = NSPredicate(format: "subquery(#cast, $x, $x == 'Sigourney Weaver').@count > 0")
let siggies = movies.filter { sigPred.evaluate(with: $0) }
print(siggies.count)


//let sigPred = NSPredicate(format: "ANY %K contains 'Jo'", "cast")
//let siggies = movies.filter { sigPred.evaluate(with: $0) }
//print(siggies.count)

