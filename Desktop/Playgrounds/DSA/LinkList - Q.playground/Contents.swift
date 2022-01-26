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

// for loop
// i ==  i + 1 < count

// swa

// arra = [0,1,0,1,0,0,1,1,1,0,0,0]
// arr
// start index , end Index
// if 0 found start, index + 1
// if 1 found end,  end index -1


//class A{
//    var b:B
//    init(b:B){
//        self.b = b
//    }
//}
//class B {
//    var a:A
//    init(a:A){
//        self.a = a
//    }
//}
//
//let b = B(a: a)
//let a = A(b:b)

//func arraySort(arr:[Int]) {
//    var arr1 = arr
//    var startIndex = 0
//    var lastIndex = arr.count - 1
//
//    for item in arr1.enumerated() {
//        if item.element == 0 {
//            arr1[startIndex] = 0
//            startIndex += 1
//        } else {
//            arr1[lastIndex] = 1
//            lastIndex -= 1
//        }
//    }
//    print(arr1)
//}
//
//print(arraySort(arr: [0,1,0,1,0,0,1,1,1,0,0,1]))
//
//
//struct Node {
//    var data : Int
//    var leftNode : Node
//    var rightNode : Node
//
//}
//

//                      14
//              12               16
//       8           13      15       17
//   7       9

// Node -> root address of 14 , value ->  9 , maxValue  13

// minimum vaule in our values -> 9


// root Node > minmum value
// left node. data > min value
// left Node.data != min value , then travers in Right

// store path
// reverse path
//
// min == node.data

// root Node  >=


class A{
    private lazy var b = B(obj: self)
}


class B{
   private weak var a :A?
   required init(obj:A){
        }
}



