import UIKit


func mergeArray(arr1 : [Int], arr2 :[Int]) -> [Int] {
 
    var i = 0 , j = 0 , k = 0
    var tempArr: [Int] = Array(0..<(arr1.count + arr2.count))
    for n in 0..<arr1.count {
        tempArr[k] = arr1[n]
        k += 1
        tempArr[k] = arr2[n]
        k += 1
    }

    while (i < arr1.count && j < arr2.count)  {
        tempArr[k] =  arr1[i]
        k += 1
        i += 1
        tempArr[k] = arr2[j]
        k += 1
        j += 1
    }

    while i < arr1.count {
        tempArr[k] = arr1[i]
        k += 1
        i += 1
    }

    while j < arr2.count {
        tempArr[k] = arr2[j]
        k += 1
        j += 1
    }
    
    return tempArr
}

print(mergeArray(arr1: [1,2,5], arr2: [3,4,6]))


func reverseCheck(item1: [Int], item2: [Int]) -> Bool {
    var status = false
    for i in 0..<item1.count {
        if item1[i] == item2[item2.count - 1 - i] {
            status = true
        } else {
            status = false
        }
    }
    return status
}

print(reverseCheck(item1: [3,2,1], item2: [1,2,3]))


