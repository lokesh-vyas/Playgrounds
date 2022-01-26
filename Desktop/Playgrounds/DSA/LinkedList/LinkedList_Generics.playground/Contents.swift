//: Playground - noun: a place where people can play

import UIKit



class LinkedList<T> {
    class Node {
        var value : T?
        var next : Node!
        var previous : Node!
        
        init(value : T) {
            self.value = value
        }
    }
    
    var head : Node!
    var isEmpty : Bool {
        return head == nil
    }
    var first : Node? {
        return head
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
    
    func append(_ value : T) {
        let newNode = Node(value: value)
        self.append(newNode)
    }
    func append(_ node : Node) {
        let newNode = Node(value: node.value as! T)
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    var count : Int {
        if var node = head {
            var c = 1
            while case let next? = node.next {
                node = next
                c += 1
            }
            return c
        } else {
            return 0
        }
    }
    
}

let list = LinkedList<Any>()
list.isEmpty
list.first
list.last

list.append("Lokesh")
list.append("Vyas")
list.append("Bikash")
list.append("Nilesh")

list.count
list.first?.value
list.last?.value

list.append(100)

list.last?.value
list.append(2.8)
list.last?.value


