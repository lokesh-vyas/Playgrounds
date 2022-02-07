//: Playground - noun: a place where people can play

import UIKit

func mergeSort(array : [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    return merge(leftPile: mergeSort(array: leftArray), rightPile: mergeSort(array: rightArray))
}

func merge(leftPile : [Int], rightPile : [Int]) -> [Int] {
    var mergedArray : [Int] = []
    var leftPile = leftPile
    var rightPile = rightPile
    
    while leftPile.count > 0 && rightPile.count > 0 {
        
        if leftPile.first! < rightPile.first! {
            mergedArray.append(leftPile.removeFirst())
        } else {
            mergedArray.append(rightPile.removeFirst())
        }
    }
    
    return mergedArray + leftPile + rightPile
}

var numbers = [7,6,4,9,2,-3,9,3,7,-6,2,7,0,1]

print(mergeSort(array: numbers))


