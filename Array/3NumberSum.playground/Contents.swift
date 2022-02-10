import UIKit

var greeting = "Hello, playground"


let arr = [1, 3, 5, 6, 2, 7, -3, -6]
//1+2+(-3) = 0 // match

func find3NumberSum(arr:[Int],sum:Int) {
    var r = 0
    var l = 0
    
    let sortedArr = arr.sorted()
    
    for i in 0..<sortedArr.count {
        l = i + 1
        r = sortedArr.count - 1
        
        while l < r {
            if sortedArr[i] + sortedArr[l] + sortedArr[r] == sum {
                print("Find \(sortedArr[i]), \(sortedArr[l]), \(sortedArr[r])")
                break
            } else if (sortedArr[i] + sortedArr[l] + sortedArr[r] < sum){
                l += 1
            } else {
                r -= 1
            }
        }
    }
}

find3NumberSum(arr: arr, sum: 0)


