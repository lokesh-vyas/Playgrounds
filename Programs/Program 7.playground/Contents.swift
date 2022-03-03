import UIKit

// diffrenc b/w == , ===
class Struct1 {
    var number = 0
    
    struct Inside {
        var inside = 0
    }
}

class Struct2 {
    var number = 1
    
    struct Inside {
        var inside = 0
    }
}

var object1 = Struct1()
let object2 = Struct1()
object1 = object2
//print(object2 == object1)
print(object2 === object1)

// self - explicit reference to the current type or instance of the type in which it occurs.
// Self - Used specifically in protocol and extension declarations to refer to the eventual type that will conform to the protocol.

// self
class MyClass {
  func showClass() {
       print("\(self)")
    }
  }
let someClass = MyClass()
someClass.showClass()

// Self
protocol MyProtocol {
   static func returnSelf() -> Self
}

class MyClass1: MyProtocol {
    static func returnSelf() -> Self {
        MyClass.self
    }
    
   // define class
}

MyClass1.returnSelf()

