//: Playground - noun: a place where people can play

import UIKit

//for dict in movies {
//    if let locationArr = (dict as NSDictionary).value(forKeyPath: "locations") as? [String]
//    {
//    print(locationArr)
//    }
//}
//
//if let locs = (movies as NSArray).value(forKeyPath: "locations") as? NSArray {
//    for loc in locs  {
//        if let location = loc as? [String] {
//            print("Location array:", location)
//        }
//    }
//}

//
//for dict in movies {
//    if let nm = (dict as NSDictionary).value(forKeyPath: "nested_movie.locations") as? [String] {
//        print(nm)
//    }
//}


//let castArray = (movies as NSArray).value(forKeyPath: "nested_movie.cast")
//print(castArray)

//let genrePredicate = NSPredicate(format: "genre == %@", "drama")
//let dramas = movies.filter {genrePredicate.evaluate(with: $0)}
//print(dramas)

let titanic = NSPredicate(format: "name == %@", "Titanic")
let nic = movies.filter { titanic.evaluate(with: $0)}
for x in nic {
    print("\(x["name"]!)")
}


let allOf = NSPredicate(format: " name like '*ni*' ")
let moviesWith = movies.filter { allOf.evaluate(with: $0)}
//print("\(moviesWith) + \n ")

let twentyFirstCenturyPredicate = NSPredicate(format: "year > 1999 and genre = 'drama'")
let twentyFirst = movies.filter { twentyFirstCenturyPredicate.evaluate(with: $0)}

//for m in twentyFirst {
//        print("\(m["name"]!), \(m["year"]!) ")
//}

//let allOfs = NSPredicate(format: " year >= 2007 and year <= 2009 ")
//let moviesWiths = movies.filter { allOfs.evaluate(with: $0)}
//for m in moviesWiths {
//    print("\(m["name"]!), \(m["year"]!) ")
//}

let tokyo = NSPredicate(format: "ANY locations == 'Tokyo'")
let tokyoMovies = movies.filter { tokyo.evaluate(with: $0) }
//print (tokyoMovies)

let Sig = NSPredicate(format: "ANY %K == 'Sigourney Weaver'", "cast")
let SigMovies = movies.filter { Sig.evaluate(with: $0) }
//print (SigMovies)

let letterJ = NSPredicate(format: "ANY %K BEGINSWITH %@ ", "cast", "J" )
let JMovies = movies.filter {letterJ.evaluate(with: $0)}
for m in JMovies {
//       print("\(m["name"]!), \(m["cast"]!) ")
    }

let SigourneyWeaverSubquery = NSPredicate(format: "SUBQUERY(#cast, $x, $x contains 'Sigourney Weaver').@count > 0")
let SigourneyWeaverBySubquery = movies.filter { SigourneyWeaverSubquery.evaluate(with: $0) }

for x in SigourneyWeaverBySubquery {
    print("\(x["name"]!), \(x["cast"]!)")
}
//print(SigourneyWeaverBySubquery)


