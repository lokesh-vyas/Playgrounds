//: Playground - noun: a place where people can play

//***************************** Higher Order Functions *****************************
import UIKit
//*Please note that when a closure is the only OR last argument of a function, ( ) can be omitted as shown above.
var nums = [10,20,30,40,50]
//map : *****************************
//Loops over a collection and applies the same operation to each element in the collection.
//Type 1
var newNums1 = nums.map { (value : Int) -> Int in
    return value * 2
}
//Type 2
var newNums2 = nums.map { (value : Int)  in
    return value * 2
}
//Type 3
var newNums3 = nums.map { (value : Int)  in value * 2 }
//Type 4
var newNums4 = nums.map { value in  value * 2 }
//Type 5
var newNums5 = nums.map { $0 * 2 }
//Filter : *****************************
//Loops over a collection and returns an array that contains elements that meet a condition.

let arrayOfInts = [1,2,3,4,5,6,7,8,9,10]
var arrayOfEvens = arrayOfInts.filter { $0 % 2 == 0 }
print(arrayOfEvens)

//Reduce : *****************************
//Combines all items in a collection to create a single value.
nums.reduce(0, { $0 + $1 })

//FlatMap : *****************************
//When implemented on sequences : Flattens a collection of collections.
// also removes nil from the array
var combiningOfArrays = [nums, arrayOfEvens]
let another = combiningOfArrays.flatMap({ $0 })
print(another)


