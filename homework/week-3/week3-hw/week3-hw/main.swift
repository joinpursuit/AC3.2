//
//  main.swift
//  week3-hw

import Foundation


enum MathOperation: String{
    
    case Addition = "+"
    case Subraction = "-"
    case Multiply = "*"
    case Divide = "/"
//    case Random = "?"

}


//filter function
func myFliter(inArray:[Int], filter:(Int)->Bool) -> [Int]{
    
    var tempArray = [Int]()
    
    for i in inArray {
        
        let test = filter(i)
      
        if test {
            tempArray.append(i)
        }
    }
    
    return tempArray
    
}


//map function
func myMap(inArray:[Int],mapper:(Int) -> Int) ->[Int]{
    
    var tempArray = [Int]()
    
    for i in inArray {
        
        let test = mapper(i)
        
            tempArray.append(test)
        
    }
    
    return tempArray
    
}


func mathWorker(opt: String, num1:Double, num2:Double){
    
    var opertaor = opt
    
    var value = mathStuffFactory(opertaor)
    var test = value(num1,num2)

    if opertaor == "?" {
        
        opertaor = randomMathStuff()
        
        value = mathStuffFactory(opertaor)
        test = value(num1,num2)
        
        
        while true{
            
            print("What guess the operator for \(num1) ? \(num2) = \(test)")
           
            if let userIn = getUserInput(){
                
                if userIn[0] == opertaor{
                    
                    print("Correct!")
                    break
                }else{
                    print("Nope!")
                    continue
                }
                
            }
        }

    
        
    }
    
       print("\(num1) \(opertaor) \(num2) = \(test)")
    
}


//get random operator and passes to mathStuffFactory
func randomMathStuff() -> String{
    
    
    print("Random Function Called")
    let randomArray = ["/","+","*","-"]
    
    let randomOpt = randomArray[Int(arc4random_uniform(UInt32(randomArray.count)))]


    //print("\(5) \(randomOpt) \(3) = \(test)")
    
    return randomOpt
    
    
}


func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    
    if let opString1 = MathOperation(rawValue: opString){
        
        
        
        switch opString1 {
        case .Addition:
            return {x, y in x + y }
        case .Subraction:
            return {x, y in x - y }
        case .Multiply:
            return {x, y in x * y }
        case .Divide:
            return {x, y in x / y }
//        case .Random:
//            randomMathStuff()
            
        }
    }
    
    return {x, y in x + y }

}


//User input function
func getUserInput()-> [String]?{
    
    print(">>>>", terminator:" ")
    
    if let userInput = readLine(stripNewline: true){
        
        let inArray = userInput.componentsSeparatedByString(" ")
        
        return inArray
        
    }
    
    
    return nil
    
    
}


/* Test filter or mapping function below */

//    let myArray = [9,12,1,5,8,4,2,6,9]
//
//
//    let filtertestalues = myFliter(myArray, filter:{ (a) -> Bool in a > 5})
//    print (filtertestalues)
//    
//    let maptestalues = myMap(myArray, mapper:{ (a) -> Int in a + 5})
//    print (maptestalues)



while true{
    

    
    
    
  
    print("Enter your numbers below")
        
        if let inArray = getUserInput(){
            
            
 
            
            if inArray.count == 3 {
                
                
                

                
                let num1 = Double(inArray[0])!
                let num2 = Double(inArray[2])!
                let opt = inArray[1]
                
              //  print("You entered \(num1) \(opt) \(num2)")
                
                mathWorker(opt, num1: num1, num2: num2)
                
                
            }else{
                
                print("Format not recognized!")
                continue
            }
            
        }
}

    
    
    



    



    
