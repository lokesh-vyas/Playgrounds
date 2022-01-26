//: Playground - noun: a place where people can play
import UIKit


class Node {
  var value :Int
  var next:Node?
    
  init(value:Int,next:Node?) {
    self.value = value
    self.next = next
  }
}

let six = Node(value: 6, next: nil)
let five = Node(value: 5, next: six)
let four = Node(value: 4, next: five)
let three = Node(value: 3, next: four)
let two = Node(value: 5, next: three)
let one = Node(value: 5, next: two)

// --------------- Print Middle Node --------------------
func printMiddleNode(head:Node?) {
    var currentNode = head
    var midNode = head
    if head != nil {
        while currentNode != nil && currentNode?.next != nil {
            currentNode = currentNode?.next?.next
            midNode = currentNode?.next
        }
        print("Mid Node -> \(midNode?.value)")
    }
}

//
func changeHeadPositionOfNode(head:Node,newHeadPostion:Int) {
  var headNode = head
  var currentNode :Node?
  var newHeadPostionNode : Node?
  var postionCount = newHeadPostion
  guard headNode != nil else { return }
  print("Came here")
  while postionCount > 0 {
      if postionCount == 0 {
         newHeadPostionNode = headNode
      }
      if currentNode != nil {
          currentNode?.next = headNode
      } else {
        currentNode = head
      }
      currentNode?.next = nil
      if head.next != nil {
          headNode = headNode.next!
      }
      postionCount -= 1
   }
  
  while  newHeadPostionNode != nil {
      if newHeadPostionNode?.next == nil {
          newHeadPostionNode?.next = currentNode
     }
  }
    print(newHeadPostionNode?.value)
}



print(changeHeadPositionOfNode(head: one, newHeadPostion: 3))


