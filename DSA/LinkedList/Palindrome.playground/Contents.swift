//: Playground - noun: a place where people can play

// Function to check if a singly linked list is palindrome.

// Algorithm:

//A simple solution is to use a stack of list nodes. This mainly involves three steps.
//Traverse the given list from head to tail and push every visited node to stack.
//Traverse the list again. For every visited node, pop a node from the stack and compare data of popped node with the currently visited node.
//If all nodes matched, then return true, else false.

import UIKit

class Stack {
    var top : Node?
    func push(_ value : Int) {
        let oldTop = top
        top = Node(value: value, next: nil)
        top?.next = oldTop
    }
    
    func pop() -> Int? {
        let newTop = top
        top = top?.next
        return newTop?.value
        
    }
    
    func peek() -> Int? {
        return top?.value
    }
}

class Node {
  var value :Int
  var next:Node?
    
  init(value:Int,next:Node?) {
    self.value = value
    self.next = next
  }
}

func isPalindrome(node:Node?) -> Bool {
    var slowNode:Node? = node
    let stack = Stack()
    while slowNode != nil {
        stack.push(slowNode!.value)
        slowNode = slowNode?.next
    }
    while (headNode != nil) {
        let matchValue = stack.peek()
        stack.pop()
        if headNode?.value != matchValue {
            return false
        }
        headNode = headNode?.next
    }
    return true
}


var lastNode = Node(value: 5, next: nil)
var node4 = Node(value: 4, next: lastNode)
var node3 = Node(value: 2, next: node4)
var node2 = Node(value: 4, next: node3)
var headNode:Node? = Node(value: 5, next: node2)

print(isPalindrome(node: headNode))
