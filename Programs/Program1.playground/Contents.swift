import UIKit

//var greeting = "Hello, playground"
//
//class Hello {
//    var closure: (()->())?
//
//    let str = "Hello"
//
//    init() {
//       // closure = helloWorld
//    }
//
//    private func helloWorld() {
//        print("Hello World")
//    }
//
//
//    deinit {
//        print("deinit")
//    }
//}
//var hello: Hello? = Hello()
//hello?.closure?()
//hello = nil


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
//
//- 10 - label1 - 10 - label2 - 10 -


//extension Array {
//    func myCustomMap<T>(myMap:(Element) -> T) -> [T] {
//        var result = [T]()
//
//        forEach({ element in
//            result.append(myMap(element))
//        })
//        return result
//    }
//}

//class MyDispatchGroup {
//
//    private var groupCounter = 0
//    private var completionBlock: (() -> ())?
//
//    func enter() {
//
//        groupCounter += 1
//    }
//
//    func leave() {
//        groupCounter -= 1
//        if groupCounter == 0 {
//            completionBlock?()
//        }
//    }
//
//    func notify(completion: @escaping () -> ()) {
//        completionBlock = completion
//    }
//}


let words = ["you", "can", "use", "fedmobile", "to", "pay", "UPI"]
var slice = words[3..<4]
print("1 statement: \(slice.first ?? "")")
print("2 statement: \(slice)")
print("3 statement: \(slice[0])")
