//: Playground - noun: a place where people can play

import UIKit


var numbers = [1,2,7,3,9,4,5]
func linearSearch(_ key : Int) {
    
    for number in numbers {
        
        if key == number {
            print("value \(key) is found")
        }
    }
    }

linearSearch(7)

var sortedNumbers = numbers.sorted()
func binarySearch(_ key : Int, min : Int, max : Int) {
    
    let midIndex : Double = round(Double((min + max) / 2))
    let mid = sortedNumbers[Int(midIndex)]
    
    if mid > key {
        binarySearch(key, min: min, max: mid - 1)
    } else if mid < key {
        binarySearch(key, min: mid + 1 , max: mid)
    } else {
        print("Value \(key) is found")
    }
}

binarySearch(5, min: 0, max: 6)








