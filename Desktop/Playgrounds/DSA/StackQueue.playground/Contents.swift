//: Playground - noun: a place where people can play

import UIKit


//Stack :- LIFO - Last in first out
class Stack<T> {
    var array = [T]()
    
    func push(_ value : T){
        array.append(value)
    }
    func pop() -> T? {
        return array.popLast()
    }
    func peek() -> T? {
            return array.last
    }
    
    func isEmpty() -> Bool {
         return array.isEmpty
    }
    func count() -> Int {
        return array.count
    }
}

var stackOfNames = Stack<Any>()
stackOfNames.push("Arjun")
stackOfNames.push("Bahadur")
stackOfNames.push("Charlie")

stackOfNames.isEmpty()
stackOfNames.count()
stackOfNames.peek()
stackOfNames.pop()
stackOfNames.peek()
stackOfNames.pop()
stackOfNames.peek()
stackOfNames.push(1)
stackOfNames.peek()

//Queue : FIFO

class Queue<T> {
    var array = [T]()
    func enqueue(_ value : T) {
        array.append(value)
    }
    func dequeue() -> T? {
        let temp = array.remove(at: 0)
        return temp
    }
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    func clear() {
        array.removeAll()
    }
    func getFront() -> T? {
        return array.first
    }
}

let q = Queue<Any>()
q.enqueue("Amit")
q.enqueue("Brijesh")
q.enqueue("Chhanna")

q.getFront()
q.isEmpty()
q.dequeue()
q.getFront()
q.dequeue()
q.getFront()
q.array
q.dequeue()

