//: Playground - noun: a place where people can play

import UIKit

class Node {
    var value : Int
    var next : Node?
    
    init(value : Int, next : Node?) {
        self.value = value
        self.next = next
    }
}

let third =  Node(value: 3, next: nil)
let second = Node(value: 2, next: third)
let first =  Node(value: 1, next: second)


func printList(head : Node?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
        
    }
}

printList(head: first)

func reversing(head : Node?) -> Node? {
    print("-:-:-:-:-:-:-:-:-:-")
    var currentNode = head
    var next : Node?
    var prev : Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        
        print(prev?.value ?? -1, currentNode?.value ?? -1, next?.value ?? -1)
        prev = currentNode
        currentNode = next
    }
    
    return prev
}


let myReverseList = reversing(head: first)
printList(head: myReverseList)


