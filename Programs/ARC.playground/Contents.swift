import UIKit

//var greeting = "Hello, playground"
//
//class Hello {
//    var closure: (()->())?
//
//    let str = "Hello"
//
//    init() {
//       closure = helloWorld
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

//
//let words = ["you", "can", "use", "fedmobile", "to", "pay", "UPI"]
//var slice = words[3..<4]
//print("1 statement: \(slice.first ?? "")")
//print("2 statement: \(slice)")
//print("3 statement: \(slice[0])")



class Obj:NSObject {
    var clouser : (() -> ())?
    deinit {
        print("Denit")
    }
}

func execute() {
    let obj = Obj()
    obj.clouser = {
        print(obj.description)
    }
    print("Method End")
}
execute()
