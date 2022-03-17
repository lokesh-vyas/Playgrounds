import UIKit

//Input: lists = [[1,4,5],[1,3,4],[2,6]]
//Output: [1,1,2,3,4,4,5,6]
//Explanation: The linked-lists are:
//[
//  1->4->5,
//  1->3->4,
//  2->6
//]

//merging them into one sorted list:
//1->1->2->3->4->4->5->6

public class ListNode {
 public var val: Int
 public var next: ListNode?
 public init() { self.val = 0; self.next = nil; }
 public init(_ val: Int) { self.val = val; self.next = nil; }
 public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

var greeting = "Hello, playground"

// 1. add all linked list 1 by 1
// 2.sort after add in linked list

//func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//
//    var countOfList = lists.count
//    for i in 1..<countOfList {
//
//        var headNode0 : ListNode?
//        headNode0 = lists[0]
//        var headNodei : ListNode?
//        headNodei = lists[i]
//
//        if (headNode0!.val >= headNodei!.val) {
//            lists![i] = headNodei?.next
//            headNodei!.next = headNode0
//            lists![0] = headNodei
//        } else {
//            while hea {
//                <#code#>
//            }
//        }
//    }
//}

// [7,1,5,3,6,4]
// [1,2,3,4,5]

func maxProfit(price : [Int]) {
    
    // for i -> n
     // for j  (i + 1) -> n
       // if diffrecnc value > lastvalue
         // add to profit
    var maxDiffrence = 0
    for i in 0..<price.count {
        var diffrenc = 0
        for j in (i + 1)..<price.count {
            diffrenc = price[j] - price[i]
            
            if diffrenc > maxDiffrence {
                maxDiffrence = diffrenc
            }
        }
    }
    
}

func some<T:Numeric>(a: T,b : T) -> T {
    return a + b
}

protocol ABC  {
    associatedtype DataType
    
    func sum<DataType>(a:DataType,B:DataType) -> DataType
}


/*
Implement Reduce function
*/

// 0
// 1
func myReduce<Element,Value>(elements:[Element], initialResult: Value, nextResult:(Value,Element) -> Value) -> Value {
    var newValue = initialResult

    for element in elements {
        newValue = nextResult(newValue,element)
    }
    return newValue
}


/*

1. 2. 4
5. 6. 7
8. 9. 10
*/
var grid = [[Int]]()


// 6

func find(element: Int) -> Bool {
    let rows = grid.count
    let cols = grid[0].count
    
    if rows == 0 {
        return false
    }
    
    var i = 0
    var j = rows - 1
    var mid = 0
    
    // O(log n)
    
    while (i <= j) {
        mid = i + j / 2
        if element == grid[mid][0] {
            return true
        } else if element == grid[mid][j] {
            return true
        }
        if (element > grid[mid][0] && element < grid[mid][j - 1]) {
            // search
            return
        }
        if element < grid[mid][0] {
            i = mid - 1
        }
        if element > grid[mid][j - 1] {
            j = mid + 1
        }
    }
    
    
    // o(n)
    
    while(i < rows && j >= 0) {
        if grid[i][j] == element {
            return true
        } else {
            if grid[i][j] > element {
                j = j - 1
            } else {
                i = i + 1
            }
        }
    }
    
    // o(n^2)
    
    // for i in 0..<rows {
    //     for j in 0..<cols {
    //         if grid[i][j] == element {
    //             return true
    //             break
    //         }
    //     }
    // }
    return false
}


/*

 Find the largest/longest unique character substring in a given string
 input = abzmtbstranglesb
 output = bstrangle
 
 
 abzmt
 bzmt
 zmtbs
 mtbs
 
 bstrangle

*/

// i
// print("Hello, world!")

// var meta: [String: String] = [:]

// func test() {
//     DispatchQueue.main.sync {
//         // UI
//         DispatchQueue.main.asyc {
//             // print("in async")
//             // Local models
//         }
//     }

// }

// let queue = DisptchQueue(lable:"meta-thread-safe",attribute:.concurrent)
// func update() {
//        queue.async(flags:.barrier) {
//            // update task here
//        }
// }


// func get(key: String) {
//     queue.sync {
//         // to fetch
//     }
// }


// test()


//
// extension Array {
// func myMap<Transform>(transform :(Element) -> Transform?) -> [Transform] {
//     var result = [Transform]()
//     forEach { element in
//      result.append(transform(element))
//     }
//     return result
// }
// }

// var thing = "cars"

// let closure = { [thing] in
//   print("I love \(thing)")
// }

// thing = "airplanes"

// closure()


// enum Result {
//     associatedtype DataType
//     case failed(error: Error)
//     case success(response: DataType)
// }

// Result.failed()


func version() -> String? {
    info["CFBudle_string"] as? String
    //2.0.0 =? true
    // "a.b.c"
    //"1.0.0."
    //0
    // "1.0"
 // "2.0.0.0"
   
 }


class test {
    func versionTest() -> Bool {
       if let versionString = version() {
           let versionStringCompponent = versionString.split(byCharacter: ".")
           
           if versionStringCompponent
           if conditioon to check 0
           if versionStringCompponent == 3 {
               return true
           }
           
           
           return false
       }
       return false
    }
}
