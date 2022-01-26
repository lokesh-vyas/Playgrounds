//: Playground - noun: a place where people can play

import UIKit

class Node {
    var value : Int?
    var next : Node!
    var previous : Node!
    
    init(value : Int?) {
        self.value = value
        
    }
}

class Queue {
    var head : Node!
    var first : Node? {
        return head
    }
    var last : Node? {
        if var node = head {
            while  case let next? = node.next {
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
        self.append(newNode)
        
    }
    func append(_ node : Node) {
        let newNode = Node(value: node.value)
        
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
        
    }
    
    func delete() -> Int? {
        let cureentHead = head
        head = head.next
        return cureentHead?.value
    }
    
    func deleteAll() {
        
        head = nil
    }

}

let q = Queue()
q.count
q.first?.value

q.insert(66)
q.insert(77)
q.insert(88)

q.first?.value
q.delete()
q.first?.value

q.deleteAll()
q.count




