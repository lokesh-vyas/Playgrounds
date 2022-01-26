import UIKit


class Node {
    var value : Int?
    var next : Node?
    
    init(value : Int) {
        self.value = value
        self.next = nil
    }
}

class List {
    
    var head : Node?
    
    func addNode(_ value: Int)
    {
        // Create new node
        let node: Node? = Node(value: value);
        if (self.head == nil)
        {
            self.head = node;
        }
        else
        {
            var temp: Node? = self.head;
            // Find last node
            while (temp!.next  != nil)
            {
                // Visit to next node
                temp = temp!.next;
            }
            // Add node at last position
            temp!.next = node;
        }
    }
    
    func findMiddle() -> Int {
        //var count = 0
        var temp = head
        var mid = head
        
        while (temp  != nil &&
                      temp!.next  != nil &&
                      temp!.next!.next  != nil)
                    {
                        // Visit to next node
                        mid = mid!.next;
                        // Visit to second next node
                        temp = temp!.next!.next;
                    }
        return mid?.value ?? 0
//        while (midNode?.next != nil) {
//            count += 1
//            if count % 2 == 0 {
//                midNode = midNode?.next
//                print("MID NODE",midNode?.value)
//            }
//            head = head?.next
//            print("Head NODE",head?.value)
//        }
//
//        if (count % 2) == 1 {
//            print("came here")
//            return (midNode?.next?.value!)!
//        } else {
//            return (midNode?.value!)!
//        }
        
    }
}

var list = List()
list.addNode(1)
list.addNode(2)
list.addNode(3)
list.addNode(4)
list.addNode(5)
list.addNode(6)
list.addNode(7)
list.addNode(8)
list.addNode(9)
list.addNode(10)

print(list.findMiddle())




