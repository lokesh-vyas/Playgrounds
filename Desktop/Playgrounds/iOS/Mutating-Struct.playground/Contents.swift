//: Playground - noun: a place where people can play

import UIKit

struct Point {
    
    var x = 0.0, y = 0.0
    
  mutating func moveBy(a : Double, b : Double) {
        x += a
        y += b
    }
}

var somePoint = Point(x: 10.0, y: 12.0)
somePoint.moveBy(a: 2.0, b: 3.0)
somePoint.x
somePoint.y


struct Rectangle {
    var width = 1, height = 1
    func area() -> Int {
        return width * height
    }
    
    mutating func scaleBy(_ value : Int) {
        width *= value
        height *= value
        
    }
    
}

var rect = Rectangle(width: 10, height: 10)
rect.scaleBy(5)
rect.area()



//struct Hack {
//    var age : String
//    let number : Int
//
//    init(age:String,number : Int) {
//        self.number = number
//        self.age = age
//    }
//}
//
//
//let h1 = Hack(age: "Y", number: 1)
//h1.age = "Jack"
//h1.number = 10
//
//
//var h2 = Hack(age: "Y", number: 1)
//h2.age = "Jack"
//h2.number = 10


//struct MemoryAddress<T>: CustomStringConvertible {
//
//    let intValue: Int
//
//    var description: String {
//        let length = 2 + 2 * MemoryLayout<UnsafeRawPointer>.size
//        return String(format: "%0\(length)p", intValue)
//    }
//
//    // for structures
//    init(of structPointer: UnsafePointer<T>) {
//        intValue = Int(bitPattern: structPointer)
//    }
//}
//
//extension MemoryAddress where T: AnyObject {
//
//    // for classes
//    init(of classInstance: T) {
//        intValue = unsafeBitCast(classInstance, to: Int.self)
//        // or      Int(bitPattern: Unmanaged<T>.passUnretained(classInstance).toOpaque())
//    }
//}
//
//class ABC {
//    var def :DEF?
//}
//
//struct DEF {
//    var age :String?
//}
//
//func callTow() {
//    var obj = [DEF(),DEF(),DEF()]
//    var obj1 = obj
//
//    print(MemoryAddress(of: &obj))
//    print(MemoryAddress(of: &obj1))
//    //print(obj == obj1)
//}
//
//callTow()


//class SomeClass {
//    var number : Int
//
//    init(number : Int) {
//        self.number = number
//    }
//}
//struct SomeStruct {
//    var number : Int
//    init(number : Int) {
//        self.number = number
//    }
//}
//
//
//var objClass1 = SomeClass(number: 10)
//var objStruct1 = SomeStruct(number: 10)
//
//var objClass2 = objClass1
//var objStruct2 = objStruct1
//
//objClass1.number = 20
//objClass2.number
//
//objStruct1.number = 20
//objStruct1.number
//objStruct2.number

struct Product {
    var name :String
}
struct User {
    var name :String
}

var product = Product(name: "Lokesh")
var user = User(name: "iOS")

var dataSource :[Any] = [product,user]

dataSource?.first?


