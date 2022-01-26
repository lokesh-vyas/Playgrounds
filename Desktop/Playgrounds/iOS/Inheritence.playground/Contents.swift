//: Playground - noun: a place where people can play

import UIKit

class A {
    func x() {
        print("x:I am of A type ")
    }
    func y() {
        print("y:I am of A type ")
    }
}

class B : A {
  override  func y() {
        print("y:I am of B type ")
    }
    func z() {
        print("z:I am of B type ")
    }
}

//let temp  = A() // temp = A()
//let temp : B = B() // temp = B()
//let temp : A = B() // ****
//let temp : B = A()


//temp.x()
//temp.y()
//temp.z()



