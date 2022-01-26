//: Playground - noun: a place where people can play

import UIKit

//Method 1 : Swift Dictionary // Time Complexity : O(n)
//let arr0 = "hello"
//let array = arr0.map { String($0) }

let array = ["a","b","a","c","d","b"] // or [1,2,5,2,7,3,1,7,2,5]
var counts :[String : Int] = [:]

for item in array {
    counts[item, default :0] += 1
}

for (key,element) in counts {
    print("\(key) occurs, \(element)times ")
}


//Method 2 : Making Negative // Time Complexity : O(n)
var arr = [5, 2, 4, 5, 2, 3, 1, 1]
for i in 0..<arr.count {
    if arr[abs(arr[i])] > 0 {
        arr[abs(arr[i])] = -arr[abs(arr[i])]
    } else {
        print("Repeating Elements  :", abs(arr[i]))
    }
}

