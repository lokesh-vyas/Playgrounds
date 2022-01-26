//: Playground - noun: a place where people can play

import UIKit


func useOfDefer() {
    print("print 1")
    defer{
        print("print 2")
    }
    defer{
        print("print 3")
    }
    defer{
        defer{
            print("print 7")
        }
        print("print 4")
    }
    defer{
        print("print 5")
    }
    print("print 6")
}

useOfDefer()

