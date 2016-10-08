//
//  main.swift
//  CalcArrayPoints
//
//  Created by Albert on 10/7/16.
//  Copyright © 2016 iSchool. All rights reserved.
//

import Foundation

func add(valueOne : Int, valueTwo : Int) -> Double {
    return Double(valueOne + valueTwo)
}

func subtract(valueOne : Int, valueTwo : Int) -> Double {
    return Double(valueOne - valueTwo)
}

func multiply(valueOne : Int, valueTwo : Int) -> Double {
    return Double(valueOne * valueTwo)
}

func divide(valueOne : Int, valueTwo: Int) -> Double {
    return Double(valueOne) / Double(valueTwo)
}

func mathOperation(valueOne : Int, valueTwo : Int, operation : (Int, Int) -> Double) -> Double {
    return operation(valueOne, valueTwo)
}

func arrayAdd(array : [Int]) -> Double {
    var total = 0;
    for value in array {
        total += value
    }
    return Double(total)
}

func arrayMultiply(array : [Int]) -> Double {
    if array.count > 1 {
        var total = array[0]
        for index in 1...array.count - 1 {
            total *= array[index]
        }
        return Double(total)
    } else {
        print("Please enter a valid array")
        return 0.0
    }
}

func arrayCount(array : [Int]) -> Double {
    return Double(array.count)
}

func arrayAvg(array : [Int]) -> Double {
    return arrayAdd(array: array) / Double(array.count)
}

func arrayOperation(array : [Int], operation : ([Int]) -> Double) -> Double {
    return operation(array)
}

func addCoordinates (coordinate1 : (Int, Int), coordinate2 : (Int, Int)) -> (Int, Int) {
    return (coordinate1.0 + coordinate2.0, coordinate1.1 + coordinate2.1)
}

func subtractCoordinates (coordinate1 : (Int, Int), coordinate2 : (Int, Int)) -> (Int, Int) {
    return (coordinate1.0 - coordinate2.0, coordinate1.1 - coordinate2.1)
}

func addDictCoordinates (coordinateDictionary1 : [String : Double], coordinateDictionary2 : [String : Double]) -> [String : Double] {
    var totalx = 0.0
    var totaly = 0.0
    for (key, value) in coordinateDictionary1 {
        if(key == "x") {
            totalx += value
        } else if(key == "y") {
            totaly += value
        }
    }
    for (key, value) in coordinateDictionary2 {
        if(key == "x") {
            totalx += value
        } else if(key == "y") {
            totaly += value
        }
    }
    return ["x" : totalx, "y" : totaly]
}

func subtractDictCoordinates (coordinateDictionary1 : [String : Double], coordinateDictionary2 : [String : Double]) -> [String : Double] {
    var totalx = 0.0
    var totaly = 0.0
    for (key, value) in coordinateDictionary1 {
        if(key == "x") {
            totalx -= value
        } else if(key == "y") {
            totaly -= value
        }
    }
    for (key, value) in coordinateDictionary2 {
        if(key == "x") {
            totalx -= value
        } else if(key == "y") {
            totaly -= value
        }
    }
    return ["x" : totalx, "y" : totaly]
}


print(mathOperation(valueOne: 1, valueTwo: 2, operation: divide))
print(arrayOperation(array : [1, 2, 3, 4 ,5], operation : arrayAvg))

var explore = [5.5 : "StringValue"]
print("Can we key by doubles? \(explore[5.5]!)")
