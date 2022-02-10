import UIKit
import PlaygroundSupport

//var greeting = "Hello, playground"
//
let arr = [1,2,3,4,5,6]


func arryPrint(arr:[Int],index:Int) ->Int? {
    guard index < arr.count else {
        return nil
    }
    return arr[index]
}

print(arryPrint(arr: arr, index: 5))


//let q = DispatchQueue(label: "custom",attributes: .concurrent)
//
//func printQ(){
//    q.async {
//        for i in 0..<10 {
//            print("RED") // t 1
//        }
//    }
//    q.sync {
//        for i in 0..<10 {
//            print("Green") // t 2
//        }
//    }
//    q.async {
//        for i in 0..<10 {
//            print("Blue")
//        }
//    }
//}


let i = 11
let j = 20
let result = 9...11 ~= i ? j % 2 == 0 ? "iPad" : "iPhone" : "Apple"
print(result)

// Mirror
// Property wrapper



