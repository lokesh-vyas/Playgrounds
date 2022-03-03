import UIKit

//let q = DispatchQueue(label: "myQueue", attributes: .concurrent)
//q.async {
//    print("work async start")
//    q.sync {
//        print("work sync in async")
//    }
//    print("work async end")
//}
//
//q.sync {
//    print("work sync")
//}
//
//print("done")

//////////////////////////////////////////////////////////////////////
//
//let q = DispatchQueue(label: "myQueue", attributes: .concurrent)
//q.async {
//    print("work1 start")
//}
//
//q.async {
//    print("work2 start")
//}
//
//print("done")

//////////////////////////////////////////////////////////////////////
//let q = DispatchQueue(label: "myQueue", attributes: .concurrent)
//q.sync {
//    print("work1 start")
//}
//
//q.sync {
//    print("work2 start")
//}
//
//print("done")

//////////////////////////////////////////////////////////////////////

//var arr = [Any]()
//let queue = DispatchQueue(label: "thread-safe",attributes: .concurrent)
//
//func append(item:Any) {
//    queue.async(flags: .barrier) {
//        arr.append(item)
//    }
//}
//
//func read() {
//    queue.sync {
//        print(arr.last)
//    }
//}

// thrad < - write
// .barrir -> arr.last

//print("1")
//DispatchQueue.main.async {
//    print("2")
//    DispatchQueue.main.sync {
//        print("3")
//    }
//    print("4")
//}
//print("5")


//// async
//// sync


//var threadSafeArray = [Any]()
//let queue = DispatchQueue(label: "Thread-Safe",attributes: .concurrent)
//
//// write
//func addElement(element:Any)  {
//    queue.async(flags: .barrier) {
//        threadSafeArray.append(element)
//    }
//}
//
//func read() -> Any {
//    queue.sync {
//        return threadSafeArray.first
//    }
//}

//let q = DispatchQueue(label: "custom",attributes: .concurrent)
//
//func printQ(){
//    q.async {
//        for i in 0..<10 {
//            print("RED") // t 1
//        }
//    }
//    q.sync {
//        for i in 0..<10 {
//            print("Green") // t 2
//        }
//    }
//    q.async {
//        for i in 0..<10 {
//            print("Blue")
//        }
//    }
//}


//let dispatchQueue = DispatchQueue(label: "my.Q")
//func dispatchQueueCall() {
//dispatchQueue.async {
//    DispatchQueue.main.async {
//        print("1")
//    }
//    DispatchQueue.main.sync {
//        print("2")
//    }
//}
//dispatchQueue.sync {
//    print("3")
//}
//}
//dispatchQueueCall()


func method() {
    print("A")
    DispatchQueue.main.async {
        print("B")
        DispatchQueue.main.async {
            print("C")
        }
        DispatchQueue.main.async {
            print("D")
        }
    }
    DispatchQueue.main.async {
        print("E")
    }
}
method()
