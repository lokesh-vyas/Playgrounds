import UIKit

///.............................../////////////////////.............

let words = [25,2,3,57,38,41]
let slice = words[0..<words.count]
print(slice)


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
//
//b.append(" World!!")

///.............................../////////////////////.............
//var thing = "cars"
//let clouser = {
//    print("I love \(thing)")
//}
//thing = "airplane"
//clouser()

///.............................../////////////////////.............
//UIView.animate(withDuration: 3, animations: {
//    //Our animation block
//    print("Com")
//})

