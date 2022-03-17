import UIKit
//
//protocol Vichle
//{
//    var name : String { get }
//}
//
//struct Car : Vichle {
//    var name: String
//}
//
//var car : Vichle = Car(name: "BMW")
//print(car.name)
//var anotherCar = car
//anotherCar.name = "Audi"
//print(car.name)
 //-------------------------

//class Authur {
//    var book:Book?
//}
//
//class Book {
//    var numberOfPages = 100
//}
//
//let john = Authur()
//john.book = Book()
//
//var pages :Int = john.book!.numberOfPages
//print(pages)
//
//john.book = nil
//pages = john.book?.numberOfPages
//
//print(pages)

/////
//class Foo {
//    var failure: (() -> Void)?
//    func retry() {}
//    deinit { print("call") }
//}
//
//let foo = Foo()
//foo.failure = { foo?.retry() }
//
//struct Bar {
//    var failure: (() -> Void)?
//    func retry() {}
//}
//
//var bar = Bar()
//bar.failure = { bar.retry() }

/////////
/////
//let number = [[1,2,3],
//              [4,5,6],
//              [7,8,9]
//]
//
//print(number.map{ $0 })
//print(number.flatMap{ $0 })
//print(number.compactMap{ $0 })
////print(Array(number.joined()))
//print(number.reduce([]) {$0 + $1})



//var numberOfElement = 0
//let squredNumber = [1,2,3,4,5,6,7,8,9].lazy.map { value -> Int in
//    numberOfElement += 1
//    return value * value
//}
//let firstGreaterThen20 = squredNumber.first(where: { $0 > 20 })
//print(numberOfElement, firstGreaterThen20)


//let words = ["you","can","use","PhonePay","to","set","SIP"]
//let slice = words[3..<5]
//print(slice[0])


//@dynamicMemberLookup
//struct Wrapper<T> {
//    let wrapped : T
//    subscript<U>(dynamicMember keyPath:KeyPath<T,U>) -> U {
//        wrapped[keyPath:keyPath]
//    }
//    init(_ wrapped: T) {
//        self.wrapped = wrapped
//    }
//}
//
//let numbers = [1,2,3]
//let wrappers = Wrapper(numbers)
//wrappers.count
