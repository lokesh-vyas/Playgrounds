//: Playground - noun: a place where people can play

import UIKit

public func solution(_ S : inout String) -> Int {
    // write your code in Swift 3.0 (Linux)
    S = "((()))"
    var open = 0
    var close = 0
    var length = 0
    var k = 3
    let arrayOfString = Array(S.characters)
    length = S.characters.count
    while k <= length {
        for index in 0..<length - k {
            if arrayOfString[index] == "(" {
                open += 1
                print("oooooo",open)
            }
        }
        
        for index in k..<length {
            if arrayOfString[index] == ")" {
                close += 1
                print("ccccc",close)
            }
        }// 2nd forloop
        
        while k == length - 1 {
            if open == close {
                return open
            }
        }
        k += 1
        open = 0
        close = 0
        
        
    }
    
    return 0
}
var nn = "(()))"
solution(&nn)

