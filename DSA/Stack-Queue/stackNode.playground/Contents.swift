//: Playground - noun: a place where people can play

import UIKit

class Node<T> {
    var value : T!
    var next : Node?
    init(value : T) {
        self.value = value
    }
}
class Stack<T> {
    var top : Node<Any>?
    func push(_ value : T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let newTop = top
        top = top?.next
        return newTop?.value as! T
        
    }
    
    func peek() -> T? {
        return top?.value as! T
    }
}

let stk = Stack<Any>()
stk.push(1)
stk.push(2)
stk.push(3)
stk.pop()
stk.top?.value
stk.peek()


