//: Playground - noun: a place where people can play
import UIKit


func commonUserId(arr1:[Int],arr2:[Int]) -> [Int] {
    var commonArry = [Int]()
    var dict1: [Int:Int] = [:]
    
    for element in arr1 {
        dict1[element] = element
    }
    
    for element in arr2 {
        if dict1[element] == element {
            commonArry.append(element)
        }
    }
    return commonArry
}


func printCommonArray(arr1:[Int],arr2:[Int]) {
    var i = 0, j = 0
    while i < arr1.count && j < arr2.count {
        if arr1[i] < arr2[j] {
            i += 1
        } else if arr2[j] < arr1[i] {
            j += 1
        } else {
            print("Common Element \(arr1[i])")
            i += 1
            j += 1
        }
    }
}

let userID1 = [1,2,3,6,8,9]
let userID2 = [2,6,8,11,14,15]

print(printCommonArray(arr1: userID1, arr2: userID2))
