//: Playground - noun: a place where people can play

import UIKit

var A = [3,1,6,2,8,5,9]
for j in 1..<A.count - 1 {
    let key = A[j]
    var i = j - 1
    while i >= 0 && A[i] > key {
        A[i + 1] = A[i]
         i = i - 1
    }
    A[i + 1] = key
}
print(A)


