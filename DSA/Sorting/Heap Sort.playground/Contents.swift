//: Playground - noun: a place where people can play

import UIKit

func heapify(array : inout [Int], size : Int, index : Int) {
    var largest = index
    let left = (2 * index) + 1
    let right = (2 * index) + 2
    
    if left < size && array[left] > array[largest] {
        largest = left
    }
    if right < size && array[right] > array[largest] {
        largest = right
    }
    
    if largest != index {
        array.swapAt(index, largest)
        
        heapify(array: &array, size: size, index: largest)
    }
}

func heapSort(array : inout [Int], size : Int) {
    
    let i = Int(size / 2) - 1
//    while i >= 0  {
//        heapify(array: &array, size: size, index: i)
//        i -= 1
//    }

    for k in (0...i).reversed() {
        heapify(array: &array, size: size, index: k)
    }
    let n = size - 1
//    while n >= 0 {
//        array.swapAt(array[0], array[n])
//        heapify(array: &array, size: n, index: 0)
//        n -= 1
//    }
    
    for j in (0...n).reversed() {
        array.swapAt(array[0], array[j])
        heapify(array: &array, size: j, index: 0)
    }
}

var list = [4,2,7,1,0,6,8]
heapSort(array: &list, size: list.count)


