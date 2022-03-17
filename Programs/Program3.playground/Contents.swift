import UIKit

var greeting = "Hello, playground"


//struct Toppr {
//    fileprivate(set) var employee = "Rohan"
//}
//
//var toppr = Toppr()
//toppr.employee = "Rohit"
//
//print(toppr.employee)

// Output: Rohit


//-------------------------------------------------------------------------------
//enum FootballTeams: CaseIterable {
//    case Barcelona
//    case Manchester(type: Int)
//    case Liverpool
//      case Chelsea
//}
//
//print(FootballTeams.allCases.count)

// Output: won't exexute as Manchester(type: Int) are not supported by CaseIterable

//-------------------------------------------------------------------------------
//struct ManchesterUnited {
//    static var manager = "Ralf Rangnick"
//    var playerName: String
//    var playerAge: Int
//}
//
//let utd = ManchesterUnited(playerName: "Ronaldo", playerAge: 36)
//print(utd.manager)

// OutPut : ManchesterUnited.manager

//-------------------------------------------------------------------------------

//let numbers = [1, 3, 5 ]
//let result = numbers.reduce(3, +)
//print(result)

// Output : 12

//-------------------------------------------------------------------------------
//func topprDivider<T:BinaryInteger>(_ value: T ) -> T {
//    return value / value
//}
//
//print(topprDivider(5))

// Output: won't run as operator '/' cannot be applied to two 'T' operands, for this topprDivider<T> should be topprDivider<T:BinaryInteger>(_ value: T )


class Emp {
    var name : String
    init(name : String) {
        self.name = name
    }
}

struct Clg {
    var name : String
    var emp : Emp?
    init(name :String) {
        self.name = name
    }

    mutating func changeName(name: String) {
        self.name = name
    }
}

var obj = Clg(name: "ITM")
obj.changeName(name:"Rohit")
print(obj.name)



protocol Movable {
    func walk()
}

extension Movable {
    func crawl() {
       print("Default crawling")
    }
}

struct Animal: Movable {
    func walk() {
        print("Animal is walking proudly")
    }
    func crawl() {
        print("Animal is crawling silently")
    }
}


let wolf: Movable = Animal()
wolf.walk()
wolf.crawl()

// 1
// 2 , wait
// signal

// semapore - 1
// sharedResounce

// write  // - 1 wait
// signal

// read


var a = UIView()
var b = UIView()
var c = UIView()
var d = UIView()

a.addSubview(c)
a.addSubview(d)
b.addSubview(c)
b.addSubview(d)

print(a.subviews.count)

