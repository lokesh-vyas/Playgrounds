//: Playground - noun: a place where people can play

import UIKit

class Node {
    var value : Int?
    var next : Node!
    
    init(value : Int?, next : Node?) {
        self.value = value
        self.next = next
    }
}

// Add Node
let threeNode = Node(value: 30, next: nil)
let twoNode = Node(value: 20, next: threeNode)
let oneNode = Node(value: 10, next: twoNode)

// Print LinkedList
func printList(head : Node?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}
printList(head: oneNode)


// Mirror LinkedList
func mirror(node:Node?) {
    if node == nil {
        return
    }
    mirror(node: node)
}
print("Mirror List :")







