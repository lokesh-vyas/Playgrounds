//: Playground - noun: a place where people can play
import UIKit

class Node {
    var value : Int
    var next : Node!
    var previous : Node!
    init(value : Int) {
        self.value = value
    }
}
class Queue {
    var head : Node?
    var first : Node? {
        return head
    }
    var isEmpty : Bool? {
        return head == nil
    }
    var last : Node? {
        if var node = head {
            while case let next? = node.next {
                node = next
            }
            return node
        } else {
            return nil
        }
    }
    var count : Int {
        if var node = head {
            var c = 1
            while case let next? = node.next {
                c += 1
                node = next
            }
            return c
        } else {
            return 0
        }
    }
    func insert(_ value : Int) {
    let newNode = Node(value: value)
        appendNode(newNode)
    }
    func appendNode(_ node : Node) {
        let newNode = Node(value: node.value)
        
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = node
        }
    }
    func delete() -> Int? {
        let newHead = head
        head = head?.next
        return newHead?.value
    }
    func deleteAll() -> String {
        if isEmpty == true {
            return "No Queue is There"
        } else {
            head = nil
            return "Queue is deleted"
        }
    }
}

let q = Queue()
q.isEmpty
q.insert(15)
q.insert(13)
q.insert(17)
q.insert(3)
q.isEmpty
q.last?.value
q.first?.value

q.delete()
q.first?.value
q.first?.next.value

q.deleteAll()
q.isEmpty
q.count
q.first?.value
q.last?.value
q.deleteAll()




