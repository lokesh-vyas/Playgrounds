//: Playground - noun: a place where people can play

import UIKit

var arr = [1,4,4,3,2,3,3,4]

func test( axs : [Int]) {
    for i in 0..<arr.count {
        if arr[i] >= 0 {
            arr[abs(arr[i])] = -arr[abs(arr[i])]
        } else {
            print("\(arr[i])Repeats")
        }
    }
}

test(axs: arr)



