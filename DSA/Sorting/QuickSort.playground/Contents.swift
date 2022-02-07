
import Foundation

func quick(array : inout [Int], low : Int, high : Int) {
    if low < high {
        let pivot = partition(array: &array, low: low, high: high)
        quick(array: &array, low: low, high: pivot)
        quick(array: &array, low: pivot + 1, high: high)
    }
}

func partition(array : inout [Int], low : Int, high : Int) -> Int {
    let pivot = array[low]
    var i = low - 1
    var j = high + 1
    
    while true {
        repeat {
                i += 1
        } while array[i] < pivot
        
        repeat {
            j -= 1
        } while array[j] > pivot
        
        if i < j {
            array.swapAt(i, j)
        } else {
            
            return j
        }
        
    }
   
    
}

var list = [-9,6,2,5,1,7,5,2,9,0,-3,-2]

quick(array: &list, low: 0, high: list.count - 1)
print(list)


