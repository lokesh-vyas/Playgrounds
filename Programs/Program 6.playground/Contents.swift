import UIKit

///.............................../////////////////////.............

//let words = [25,2,3,57,38,41]
//let slice = words[0..<words.count]
//print(slice)


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

//let numbers = [1,2,3]
//let wrappers = Wrapper(numbers)
//wrappers.count

///.............................../////////////////////.............
//class Car {
//    var name = "Mercedes"
//}
//enum Direction {
//    case north, east, west,south
//}
//
//func update(vichle:Car,direction:Direction) {
//    let newV = vichle
//    newV.name = "BMW"
//
//    var newDir = direction
//    newDir = .west
//
//    print("\(vichle.name) \(newV.name)")
//    print("\(newDir) \(direction)")
//}
//
//update(vichle: Car(), direction: Direction.east)

///.............................../////////////////////.............
//
//let a:String = "Hello"
//var b = a
//var c = b
//var d = a
////
//b.append(" World!!")
//print(a , b ,c ,d )

///.............................../////////////////////.............
var thing = "cars"
let clouser = { 
    print("I love \(thing)")
}
thing = "airplane"
clouser()

///.............................../////////////////////.............
//UIView.animate(withDuration: 3, animations: {
//    //Our animation block
//    print("Com")
//})


/////............................///////////........................
let number1 = [1,2,3].map { [$0 , $0]}
print(number1)

/////............................///////////........................
func fizBus(number: Int)
{
    switch (number % 3 == 0,number % 5 == 0) {
    case (true, false):
        print("Fizz")
    case (true, true):
        print("Fizz1 ")
    case (false, false):
        print("Fizz2")
    default:
        print("de")
    }
}
fizBus(number: 15)

/////............................///////////........................
let status = "shiny"

for (postion,charater) in status.reversed().enumerated() where postion % 2 ==  0 {
    print(postion , charater)
}

/////............................///////////........................
func fun1(_ num :Int) -> Int {
    func fun2(_ num :Int) -> Int {
        func fun3(_ num :Int) -> Int {
            return num * 3
        }
        return num * fun3(4)
    }
    return num * fun2(5)
}

print(fun1(2))

/////............................///////////........................
for i in stride(from: 1, through: 17, by: 4) {
    print(i)
}


/////............................///////////........................
func foo(_ function:(Int) -> Int) -> Int {
    return function(function(5))
}

func bar<T:BinaryInteger>(_ number:T) -> T {
    return number * 3
}

print(foo(bar))


/////............................///////////........................
extension Int {
    mutating func square() {
        self = self * self
    }
}

var number7 = 2
print(number7.square())
