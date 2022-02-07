//: Playground - noun: a place where people can play
import UIKit

func pairFind(arr:[Int],match:Int) {
    let arr = arr
    let sortedArr = arr.sorted()

    var low = 0
    var high = arr.count - 1

    while low < high {
        if sortedArr[low] + sortedArr[high] == match {
            print("pair \(sortedArr[low]) , \(sortedArr[high])")
        }
        (sortedArr[low] + sortedArr[high] < match) ? (low += 1) : (high -= 1)
    }
    print("Pair not found")
}

let givenArray = [1,3,7,8,9,10]
pairFind(arr: givenArray, match: 11)


func pairFoundWithDict(arr:[Int],match:Int) {
    var dictionary :[Int:Int] = [:]

    for element in arr {
        let diff = match - element
        if let _ = dictionary[diff] {
            print("Pair ,(\(element) , \(diff))")
        }
        dictionary[element] = element
    }
}

pairFoundWithDict(arr: givenArray, match: 11)



func swapWithoutThirdVar(a:Int,B:Int) {
    var a = a + B
    let b = a - B
    a = a - b
    print("A =  \(a), B = \(b)")
}

swapWithoutThirdVar(a: 12, B: 21)

