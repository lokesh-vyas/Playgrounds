import UIKit


let dict = ["key1":1,"key2":20]
let arrayOfInt = [1,3,4,2,6,8,5]

//..................................................................Map.................................................................................
// MAP :- Use map for loop over a collection and apply the same operation to each element in the collection.
// On array

let newArray = arrayOfInt.map { $0 * 10 }
print(newArray)

// On Dictionary

let newDict = dict.map { (key,value) in
    return value * 10
}
print(newDict)
//..................................................................Filter.................................................................................
// Filter :- use filter loop over collection and return an Array containing only those value that match.
// $0 is the key and $1 is the value as Dictionary in Filter is behaving like touple
let newFilterArray = arrayOfInt.filter{ $0 % 2 == 0 }
print(newFilterArray)
let newFilterDict = dict.filter { $1 % 2 == 0 }
print(newFilterDict)
let  newFilterDict1 = dict.filter { (key, value) -> Bool in
     value < 100
}
print(newFilterDict1)

//....................................................................Reduce...............................................................................
/* Reduce :- use Reduce to combine all items in a collection to create a single new value.
 Reduce function take two values
 One is intial value which is store a initial value or value or the result returned by the clouser from each iteration
 Second , The other one is a clouser which takes two arguments, one is initial value or the result from the previous execution of the clouser and other one is next item in the collection.*/
//Reduce on Array
let reduceArraySum = arrayOfInt.reduce(0) {$0 + $1}
print(reduceArraySum)
print(arrayOfInt.reduce(0,+))

let strArray = ["abc","def","ghi"]
print(strArray.reduce("", +))

// Reduce on dictionary
print(dict.reduce("Key = ") {$0 + $1.key})
print(dict.reduce(0){$0 + $1.value})

//....................................................................FlatMap...............................................................................
//Flat is used to flatten a collection of collections. but before flattering the collection, we can apply map to each elemants.

//Array
let intArray = [123,456,789]
print(intArray.flatMap { return $0 })
print(intArray.map { return $0 })

let stArray = ["abc","def","ghi"]
print(stArray.flatMap { return $0 })
print(stArray.map { return $0 })

let strArray1 = [["abc","def","ghi"],["jkl","mno","pqr"]]
print(strArray1.map{ return $0 })
print(strArray1.compactMap { return $0 })

let strArray2 = [["abc","def","ghi"],["jkl","mno","pqr"],[nil]]
print(strArray2.compactMap { return $0 })
//Dictonary
let compactMapDict = dict.compactMap { $1 }
print(compactMapDict)

// Advantages of flatMap/compactMap
/*
 1. Removing Optional
 2. Flatmap by filtering or mapping
 */


extension Array {
    func myFilter(isIncluded: (Element)-> Bool) -> [Element] {
        var result = [Element]()
        forEach { element in
            if isIncluded(element) {
            result.append(element)
            }
        }
        return result
    }
    
    func myCompactMap<Transform>(transform: (Element)-> Transform?) -> [Transform] {
           var result = [Transform]()
           forEach { element in
               if let transformedEntity = transform(element) {
               result.append(transformedEntity)
               }
           }
           return result
       }
    
    func myMap<Transform>(transform: (Element)-> Transform) -> [Transform] {
         var result = [Transform]()
         forEach { element in
             result.append(transform(element))
         }
         return result
     }
    
    func myReduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element)-> Result) -> Result {
          var result = initialResult
            forEach {
                result = nextPartialResult(result, $0)
            }
            return result
     }
}

