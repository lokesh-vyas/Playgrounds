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


    let threeNode = Node(value: 30, next: nil)
    let twoNode = Node(value: 20, next: threeNode)
    let oneNode = Node(value: 10, next: twoNode)


    func printList(head : Node?) {
        var currentNode = head
        while currentNode != nil {
            print(currentNode?.value ?? -1)
            currentNode = currentNode?.next
        }
    }

printList(head: oneNode)

func reverseList(head : Node?) -> Node? {
    var currentNode = head
    var next : Node?
    var prev : Node?
    while currentNode != nil {
        
        next = currentNode?.next
        currentNode?.next = prev
        
        prev = currentNode
        currentNode = next
    }
    return prev
}


let myReverseList = reverseList(head: oneNode)
print("Reverse List :")
printList(head: myReverseList)







