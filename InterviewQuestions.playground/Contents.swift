import UIKit

var greeting = "Hello, playground"

//Formal Question
//
//- Why Swift is POP
//- table view vs scroll view
//- Access specifier
//- Tuple comparison in swift
//- difference b/w === / !== / ==
//- ways of pass data to one view to other
//- Life cycle of view / app
//- initialiser type in iOS
//- self vs Self
//- Any vs AnyObject
//- what is defer ?
//- what is extension
//- in extension Stored property or computed property can declare
//- What is typealias in Swift?
//- what ways to store value in swift
//- what is the userdefault, how it will internally and how we can see where data is store
//- what is CoreData
//
//
//Optional
//- what is the type of optional
//- guard let vs if let
//- optional chaining / optional binding
//- force unwrap
//
//ARC
//- How ARC works
//- Program for ARC
//- Weak / Strong / Unowned
//- IBoutlet is weak or strong
//
//Class - Struct
//- Class vs Struct
//- what is inout
//- how to change value in struct - mutating
//- how to make class type behave as copy by value
//
//UI
//- Hugging vs Compression resistant
//- Frame and bound difference
//- Responder chain for button
//- maskToBounds vs clipToBounds
//- setsNeedLayout vs layoutIfNeeded
//- what is priority of a constraint
//
//
//PROPERTY
//- Properties in iOS
//- willSet in computed Properties
//- Lazy Property
//
//THREAD
//- GCD vs OperationQueue
//- types of queue
//- multi API related question for Queue
//- Singleton how to write / thread safety /
//- Static Dispatch vs Dynamic Dispatch
//
//Closure
//- type of Closure
//- diffrene @nonEscaping / @escaping
//- capture list
//- why weak self in Closure
//-
//
//Protocol -
//- how it will work
//- delegate should be weak ?
//
//URL Session
//- URLsession
//- task
//- cache
//- configuration
//
//PROGRAMMING
//
//1. Given an array and ranges find the sum of those ranges:-
//Array = [1, 2, 3, 4, 5]
//range = [[0,2], [0,3], [0,4]]
//Output = [6, 10, 15]
//
//2. Write a function to get the intersection point of two Linked list
//
//Example 1
//
//1->2->3->4->5->Null
//10->20->30->40->50->4->5->Null
//
//3. Find Middle node in Linked List
//4. Reverse LinkedList
//5. Find Pair in Array
//6. Merge Two Array
//7. First non repeated character
//
//Swift Programming
//1. Custom filter
//2. Defer related program output
//func printStuff() {
//    print("1")
//    defer {
//        defer {
//           print("2")
//        }
//        print("3")
//    }
//    print("4")
//}
//Answer -> 1,4,3,2
//3. What is issue and how can you fix
//       let n1: Int = 1
//       let n2: Float = 2.0
//       let n3: Double = 3.34
//       var result = n1 + n2 + n3
//Answer :- var result = Double(n1) + Double(n2) + n3 // implicit type casting between two data types is not possible.
//
//4. What is value of lenght here and why ?
//       var arr1 = [1, 2, 3]
//       var arr2 = arr1
//        arr2.append(4)
//       var len = arr1.count
// Answer :-  3
//
//5. missing code here
//enum Example {
//  case something(Int, Example)
//}
//Answer :-
//enum Example {
//  indirect case something(Int, Example)
//}
//
//6.
//var view1 = UIView()
//view1.alpha = 0.5
//
//let view2 = UIView()
//view2.alpha = 0.5 // Will this line compile?
//
//view2 = view1 // Error: view2 is immutable
//
//Answer - YES
//
//7. Smallest missing positive number in an array of integers
// = 2, 3, -7, 6, 8, 1, -10, 15
//8.

//
//Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands. An island is surrounded by water and is formed by connecting adjacent lands. You may assume all four edges of the grid are all surrounded by water.
//
//
//
//Example 1:
//
//Input: grid = [
//  ["1","1","0","0","0"],
//  ["1","1","0","0","0"],
//  ["0","0","0","0","0"],
//  ["0","0","0","1","1"]
//]
//Output: 2
//
//Example 2:
//
//Input: grid = [
//  ["1","1","0","0","0"],
//  ["1","1","0","0","0"],
//  ["0","0","1","0","0"],
//  ["0","0","0","1","1"]
//]
//Output: 1
//
//
//
//--------------------------------------------------
//Write a function to get the intersection point of two Linked list
//
//Example 1
//
//1->2->3->4->5->Null
//10->20->30->40->50->->5->Null
//
//// Find the intersactionPoint -> max one iterate -> null != nill -> if element if pound pair -> intersaction point
//// traverse till both
//
//
//-------------------------------------------------------
//Given an array and ranges find the sum of those ranges
//
//Example
//
//Array = [1, 2, 3, 4, 5]
//range = [[0,2], [0,3], [0,4]]
//Output = [6, 10, 15]
//
//
//Dictionary 0 -> 1 ,,, 1 -> 3 ,,,
//
//SOLID
//Single responsiblity
//open fro extension close -> modify
//Lisco
//Interface segragation
//Dependacy inversion

//struct IntStack {
//  var items = [Int]()
//  func add(x: Int) {
//    items.append(x) // Compile time error here.
//  }
//}

let qu : DispatchQueue = DispatchQueue()

qu.async {
    print("A")
}
