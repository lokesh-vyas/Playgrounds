import UIKit
//...............................................................Initializers................................................................................
// Initializers , are like special methods that can be called to create a new instance a particalur type.
//

print("....................................................**** Designated & Convenience Initializers ***...................................................")

//**** Desiganted Initialers are primary initializers for class. A desiganted initializers fully initialzes all propertise introduce by class.
// Every class should have at least one desigantes initialzer.

///**** Convenience Initialziers are secondary for class. We can define a convenice initialzers to call desiganted initializers from the same class
class Human {
    var name : String
    init(name : String){      // Designated Initialzers
        self.name = name
    }
    
    convenience init(){        // convenience Initializers
        self.init(name: "Human Convenience")
    }
}

class Man: Human {
    var age : Int = 0
    override init(name: String) {
        super.init(name: name)
    }
    init(name:String,age:Int) {
        //super.init()                // Can not call convenience Initialzers from sub class
        super.init(name: name)        // super init is required for parent desiganted init
        self.age = age
        self.name = name
    }
    convenience init(){
        self.init(name: "Man Convenience", age: 27)
    }
    
}

let manC = Man()    // calling convenience init for Man class
print("\(manC.name)...\(manC.age)")

let manSD = Man(name: "Class Super Designated")   // Calling Super Class(Human) Desiganted init
print("\(manSD.name)...\(manSD.age)")

let manD = Man(name: "Class Desiganted", age: 20)  // Calling sub class Designated init
print("\(manD.name)...\(manD.age)")

let human = Human()
print(human.name)

let humanDes = Human(name: "Human Desiganted")
print(humanDes.name)

print("....................................................**** Required Initializer ****....................................................................")

// *** Required initializer :- Write a required modifier before the defination of the class initializer to indicate that every sub class of that class must implement that initializer.
// No need to write override keyword when overriding a requried desiganated initializer.

class HumanReq {
    var name : String
    required init(name: String){
        self.name = name
    }
}

class ManReq:HumanReq{
    var age  = 0
    
    init(name:String, age: Int){
        super.init(name: name)
        self.name = name
        self.age = age
    }
    
    required init(name: String) {
        super.init(name: name)
      //  fatalError("init(name:) has not been implemented")
    }
    convenience init(){
        self.init(name: "Class Call : Man Req As Convenience init", age: 22)
    }
}

class Extra:HumanReq{}

let humanReq = HumanReq(name: "Class Call : Human Req")
print(humanReq.name)

let manReq = ManReq(name: "Class Call : Human Req From Man Req Required init")
print(manReq.name)

let manReqDesignated = ManReq(name: "Class Call : Man Req As desiganted Init", age: 10)
print("\(manReqDesignated.name)...\(manReqDesignated.age)")

let manReqCon = ManReq()
print("\(manReqCon.name)...\(manReqCon.age)")

let c = Extra(name: "Class Call : Extra and Human Req call Required init")
print(c.name)

print("....................................................**** Failable(Optional) Initializer ****..........................................................")



