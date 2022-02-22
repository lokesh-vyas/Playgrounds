//: Playground - noun: a place where people can play

import UIKit

//Method 1 : Swift Dictionary // Time Complexity : O(n)
//let arr0 = "hello"
//let array = arr0.map { String($0) }

// Find Duplicate element contain

let charArray : [Character] = ["a","b","a","c","d","b"]
let stringArray = ["a","b","a","c","d","b"]// or
let intArray = [1,2,5,2,7,3,1,7,2,5]

func findDuplicateCount(arr:[String])  {
    var counts :[String : Int] = [:]

    for item in arr {
        counts[item, default :0] += 1
    }

    for (key,element) in counts {
        print("\(key) occurs, \(element)times ")
    }
    print(counts)
}
findDuplicateCount(arr: stringArray)



//Method 2 : Making Negative // Time Complexity : O(n)
var arr = [5, 2, 4, 5, 2, 3, 1, 1]
for i in 0..<arr.count {
    if arr[abs(arr[i])] > 0 {
        arr[abs(arr[i])] = -arr[abs(arr[i])]
    } else {
        print("Repeating Elements  :", abs(arr[i]))
    }
}


// ................ Remove Duplicate ...................

// Method 1
let setArray = Set(stringArray)
print(setArray)

// Set is unordered array and it will return as SET type.

// Method 2

func removeDuplicate(arr:[Int]) -> [Int] {
    var tempArray = [Int]()
    arr.forEach( { item in
        if !(tempArray.contains(item)) {
            tempArray.append(item)
        }
    })
    return tempArray
}

print(removeDuplicate(arr: intArray))


// Method 3 - with Extension Equatbale for generic

extension Array where Element  : Equatable {
    func removeDuplicay() -> [Element] {
        guard !self.isEmpty else {
            return []
        }
        var tempArray = [Element]()
        self.forEach({ item in
            if !(tempArray.contains(item)) {
                tempArray.append(item)
            }
        })
        return tempArray
    }
}

print("Char Array",charArray.removeDuplicay())
print("Int Array",intArray.removeDuplicay())
