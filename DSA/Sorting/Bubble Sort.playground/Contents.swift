//: Playground - noun: a place where people can play

import UIKit

var  array1 = [5,3,6,1,8,3,9,0]


//for i = 0; i < n; i++
//for j = 0; j < n - i - 1; j++
// swapping

for i in 0..<array1.count {
    for j in 0..<array1.count - i - 1 {
        let k = j + 1
        if array1[j] > array1[k] {
            let temp = array1[j]
            array1[j] = array1[k]
            array1[k] = temp
        }
    }
}

print(array1)


