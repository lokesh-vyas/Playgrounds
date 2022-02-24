//: Playground - noun: a place where people can play

// Write a function detectAndCountLoop() that checks whether a given Linked List contains loop and if loop is present then returns count of nodes in loop. For example, the loop is present in below-linked list and length of the loop is 4. If the loop is not present, then the function should return 0.

// Algorithm:

//1. Find the common point in the loop by using the Floyd’s Cycle detection algorithm
//2. Store the pointer in a temporary variable and keep a count = 0
//3. Traverse the linked list until the same node is reached again and increase the count while moving to next node.
//4. Print the count as length of loop

import UIKit

class Node {
  var value :Int
  var next:Node?
    
  init(value:Int,next:Node?) {
    self.value = value
    self.next = next
  }
}

func countNode(node:Node) -> Int {
    var res = 1
    var tempNode = node
    while(tempNode.next?.value != node.value) {
        res += 1
        tempNode = tempNode.next!
    }
    return res
}

func countNodesInLoops(node:Node) -> Int {
    var slowNode = node, fastNode = node
    while ((slowNode.next != nil) && (fastNode.next != nil)) {
        slowNode = slowNode.next!
        fastNode = (fastNode.next?.next!)!
        
        if slowNode.value == fastNode.value {
            return countNode(node: slowNode)
        }
    }
    return 0
}

var lastNode = Node(value: 5, next: nil)
var node4 = Node(value: 4, next: lastNode)
var node3 = Node(value: 3, next: node4)
var node2 = Node(value: 2, next: node3)
var headNode = Node(value: 1, next: node2)

headNode.next?.next?.next?.next?.next = headNode.next

print(countNodesInLoops(node: headNode))
