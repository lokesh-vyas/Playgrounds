import UIKit
import PlaygroundSupport

//var greeting = "Hello, playground"
//
let arr = [1,2,3,4,5,6]


func arryPrint(arr:[Int],index:Int) ->Int? {
    guard index < arr.count else {
        return nil
    }
    return arr[index]
}

print(arryPrint(arr: arr, index: 5))




let i = 11
let j = 20
let result = 9...11 ~= i ? j % 2 == 0 ? "iPad" : "iPhone" : "Apple"
print(result)

// Mirror
// Property wrapper



