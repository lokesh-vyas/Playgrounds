//: Playground - noun: a place where people can play

// Function to add two linked list


import UIKit


class Node {
  var value :Int
  var next:Node?
    
  init(value:Int,next:Node?) {
    self.value = value
    self.next = next
  }
}

func intersectPoint(node1:Node?,node2:Node?) -> Node? {
    var ptr1:Node? = node1
    var ptr2:Node? = node2
    
    if ptr1 == nil || ptr2 == nil {
        return nil
    }
    
    while ptr1 != nil {
        ptr1 = ptr1?.next
        ptr2 = ptr2?.next
        
        if ptr1 === ptr2 {
            print("Intersaction point \(String(describing: ptr1?.value))")
            return ptr1
        }
        
        if ptr1 == nil {
            ptr1 = node2
        }
        
        if ptr2 == nil {
            ptr2 = node1
        }
    }
    return ptr1
}


var lastNode1 = Node(value: 30, next: nil)
var lastNode2 = Node(value: 15, next: nil)
var lastNode3 = Node(value: 12, next: nil)


var node31 = Node(value: 9, next: nil)
var node21 = Node(value: 6, next: node31)
var headNode1:Node? = Node(value: 3, next: node21)

headNode1?.next?.next?.next = lastNode3
headNode1?.next?.next?.next?.next = lastNode2
headNode1?.next?.next?.next?.next?.next = lastNode1


var headNode2:Node? = Node(value: 10, next: nil)
headNode2?.next = lastNode3
headNode2?.next?.next = lastNode2
headNode2?.next?.next?.next = lastNode1


var printNode = intersectPoint(node1: headNode1, node2: headNode2)

