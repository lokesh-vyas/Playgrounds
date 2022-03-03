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

func addToNumbers(node1:Node?,node2:Node?) -> Node {
    var l1:Node? = node1
    var l2:Node? = node2
    
    let tempNode = Node(value: 0, next: nil)
    var carry = 0
    while (l1?.next != nil || l2?.next != nil || carry > 0) {
        var sum = 0
        if l1?.next != nil {
            sum += l1?.value ?? 0
            l1 = l1?.next
        }
        if l2?.next != nil {
            sum += l2?.value ?? 0
            l2 = l2?.next
        }
        
        sum += carry
        carry = sum / 10
        tempNode.next = Node(value: sum % 10, next: nil)
    }
    return tempNode.next!
}


var lastNode1 = Node(value: 5, next: nil)
var node41 = Node(value: 4, next: lastNode1)
var node31 = Node(value: 2, next: node41)
var node21 = Node(value: 4, next: node31)
var headNode1:Node? = Node(value: 5, next: node21)

var lastNode2 = Node(value: 5, next: nil)
var node42 = Node(value: 4, next: lastNode2)
var node32 = Node(value: 2, next: node42)
var node22 = Node(value: 4, next: node32)
var headNode2:Node? = Node(value: 5, next: node22)

print(addToNumbers(node1: headNode1, node2: headNode2))

var printNode = addToNumbers(node1: headNode1, node2: headNode2)
print(printNode.value)
while printNode.next != nil {
    print(printNode.value)
    printNode = printNode.next!
}
