import UIKit

let arr1 = [1,2,3,4,5,6,7]
let input = 1

class A {
    
    func findElement(low: Int,high:Int,input : Int, arr:[Int]) -> Int {
        //if low > high {
        let mid = (Int(low + high) / 2)
           // print(mid)
            if arr1[mid] == input {
                return mid
            } else if input > arr1[mid]  {
                return findElement(low: mid + 1, high: high,input: input,arr: arr1)
                
            } else {
                return findElement(low: low, high: mid - 1,input: input,arr: arr1)
            }
        //}
        return -1
    }
}

let a = A()

print(a.findElement(low: 0, high: (arr1.count - 1),input: input,arr: arr1))


