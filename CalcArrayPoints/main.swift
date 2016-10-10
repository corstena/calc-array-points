//
//  main.swift
//  CalcArrayPoints
//
//  Created by Albert on 10/7/16.
//  Copyright © 2016 iSchool. All rights reserved.
//
//  Optional extra credit DONE

import Foundation

func add(left : Int?, right : Int?) -> Double? {
    if(left != nil && right != nil) {
        return Double(left! + right!)
    }
    return nil
}

func subtract(left : Int?, right : Int?) -> Double? {
    if(left != nil && right != nil) {
        return Double(left! - right!)
    }
    return nil
}

func multiply(left : Int?, right : Int?) -> Double? {
    if(left != nil && right != nil) {
        return Double(left! * right!)
    }
    return nil
}

func divide(left : Int?, right: Int?) -> Double? {
    if(left != nil && right != nil) {
        return Double(left!) / Double(right!)
    }
    return nil
}

func mathOperation(left : Int?, right : Int?, operation : (Int?, Int?) -> Double?) -> Double? {
    if(left != nil && right != nil) {
        return operation(left!, right!)
    }
    return nil
}

func add(array : [Int]?) -> Double? {
    if(array != nil) {
        var total = 0;
        for value in array! {
            total += value
        }
        return Double(total)
    }
    return nil
}

func multiply(array : [Int]?) -> Double? {
    if(array != nil) {
        if (array?.count)! > 1 {
            var total = array?[0]
            for index in 1...(array?.count)! - 1 {
                total! *= (array?[index])!
            }
            return Double(total!)
        } else {
            print("Please enter a valid array")
            return 0.0
        }
    }
    return nil
}

func count(array : [Int]?) -> Double? {
    if(array != nil) {
        return Double((array?.count)!)
    }
    return nil
}

func average(array : [Int]?) -> Double? {
    if(array != nil) {
       return add(array: array)! / Double((array?.count)!)
    }
    return nil
}

func reduce(array : [Int]?, operation : ([Int]?) -> Double?) -> Double? {
    if array != nil {
        return operation(array)
    }
    return nil
}

func add (p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract (p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

func add (p1 : [String : Int]?, p2 : [String : Int]?) -> [String : Int]? {
    var totalx = 0
    var totaly = 0
    if(p1 != nil && p2 != nil) {
        for (key, value) in p1! {
            if(key == "x") {
                totalx += value
            } else if(key == "y") {
                totaly += value
            }
        }
        for (key, value) in p2! {
            if(key == "x") {
                totalx += value
            } else if(key == "y") {
                totaly += value
            }
        }
        return ["x" : totalx, "y" : totaly]
    }
    return nil
}

func add (p1 : [String : Double]?, p2 : [String : Double]?) -> [String : Double]? {
    var totalx = 0.0
    var totaly = 0.0
    if(p1 != nil && p2 != nil) {
        for (key, value) in p1! {
            if(key == "x") {
                totalx += value
            } else if(key == "y") {
                totaly += value
            }
        }
        for (key, value) in p2! {
            if(key == "x") {
                totalx += value
            } else if(key == "y") {
                totaly += value
            }
        }
        return ["x" : totalx, "y" : totaly]
    }
    return nil
}

func subtract (p1 : [String : Int]?, p2 : [String : Int]?) -> [String : Int]? {
    var totalx = 0
    var totaly = 0
    if(p1 != nil && p2 != nil) {
        for (key, value) in p1! {
            if(key == "x") {
                totalx -= value
            } else if(key == "y") {
                totaly -= value
            }
        }
        for (key, value) in p2! {
            if(key == "x") {
                totalx -= value
            } else if(key == "y") {
                totaly -= value
            }
        }
        return ["x" : totalx, "y" : totaly]
    }
    return nil
}

func subtract (p1 : [String : Double]?, p2 : [String : Double]?) -> [String : Double]? {
    var totalx = 0.0
    var totaly = 0.0
    if(p1 != nil && p2 != nil) {
        for (key, value) in p1! {
            if(key == "x") {
                totalx -= value
            } else if(key == "y") {
                totaly -= value
            }
        }
        for (key, value) in p2! {
            if(key == "x") {
                totalx -= value
            } else if(key == "y") {
                totaly -= value
            }
        }
        return ["x" : totalx, "y" : totaly]
    }
    return nil
}
