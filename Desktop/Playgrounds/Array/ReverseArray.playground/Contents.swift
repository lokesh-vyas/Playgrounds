//: Playground - noun: a place where people can play

import UIKit

//Move all zeroes to end of array
// Revers array
func reversArray(arr:[Int], start : Int, end : Int) {
    var reverseArray = arr
    if start >= end {
        print(reverseArray)
        return
    }
    var temp = 0
    temp = arr[start]
    reverseArray[start] = reverseArray[end]
    reverseArray[end] = temp
    reversArray(arr: reverseArray, start: start + 1, end: end - 1)
}

let arr = [1, 2, 3, 4, 5, 6]

print(reversArray(arr: arr, start: 0, end: arr.count - 1))

// Reverse String

// First non repeated / repeated character.

// Match open closed brackets.

// Return the first non-repeated character in a string

// Given a sorted array arr[] and a number x, write a function that counts the occurrences of x in arr[]

var array = [111,222,333,111, 333, 111, 000, 444, 777, 222]
var ampersand : Int!
var divide : Int!

        let length = array.count
        let temp = length * length
        for i in 0..<temp {
            if array[ i % length] == array[ i / length] {
                
                if i % length == i / length {
                    continue
                    
                } else {
                    print("\( i)==>\(i % length) :\(i / length) :\(array[i / length])")
                    
                }
                
            }
        }
        
        

    
