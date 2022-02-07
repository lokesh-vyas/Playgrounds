//: Playground - noun: a place where people can play

import UIKit

var A = [3,1,6,2,8,5,9]

for i in 0..<A.count {
    var min = A[i]
    var location = i
    var j = i + 1
    while j < A.count { // in for loop j was not mutable
        if min > A[j ] {
            min = A[j]
            location = j
        }
        j += 1
    }
    
    if location != i {
        let temp = A[i]
        A[i] = A[location]
        A[location] = temp
    }
}

print(A)

