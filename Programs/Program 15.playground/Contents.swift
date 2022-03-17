//1. What is retain cycle and how do they affect code?
//
//class SomeClass {
//    func doSomething() {
//        DispatchQueue.global().asyncAfter(duration: 30 seconds) {
//            self.hello()
//        }
//    }
//
//    func hello() {
//
//    }
//}
//
//// AppDelegate.swift
//let obj = SomeClass()
//obj.doSomething()
//
//
//at t = 10 seconds
//What is the retain count of obj? 1
//
//at t = 11 seconds
//obj = nil
//Will obj be freed from memory?
//
//at t = 30 seconds
//Will there be a crash?
//
//How retain cycles are created using closures?
//
//2. Serial and concurrent queue
//
//class SomeClass {
//    var serialQueue: DispatchQueue = DispatchQueue("serial queue")
//
//    func doSomething() {
//        // background thread
//        serialQueue.async {
//            for i in 0..<10 {
//                print(i)
//            }
//        }
//        print("hello")
//        serialQueue.sync {
//            for i in 11..<20 {
//                print(i)
//            }
//        }
//
//
//
//        serialQueue.async {
//            for i in 31..<30 {
//                print(i)
//            }
//        }
//    }
//
//    func doSomething2() {
//        serialQueue.async { // t1
//            print"123"
//            serialQueue.sync { // t2
//                print("1")
//            }
//
//            print"123"
//        }
//
//    }
//}
//
//OS
//  s->  t1
//t2 -> s
//
//
//// 0 , 1,2,
//let obj = SomeClass()
//obj.doSomething2()
//
//3.
//
//class SomeClass {
//    var arr: [Int] = [1, 2, 3]
//
//    func doSomething() {
//        DispatchQueue.global().asyncAfter(30 seconds) { [arr] in
//            print(arr)
//        }
//    }
//
//    func chanegArr() {
//        self.arr = [1, 2, 3, 4]
//    }
//}
//
//let obj = SomeClass()
//obj.doSomething()
//obj.chanegArr()
//
//4.
//
//NotificationCenter
//
//API
//1. Add observer
//2. remove observer
//3. post notification
//
//class  MyNtofication {
//
//    static let shared =  MyNtofication()
//    // class , notifcation name // clouser
//    private var notifcationStorage :[Strinf:[Strinf:[(Strinf,Any) -> void]]]
//
//    private init () {
//        notifcationStorage = [:]
//    }
//    var name: String
//    var objectName: AnyObject
//    var methodName: Selector
//    var  userInfo : Dictionary<Strinf:Any>?
//
//    init() {
//        // init
//    }
//
//    func addObserver(class: Any,notificationName:Strinf,closures: Strinf,Any) -> void)
//    func postNotification(notificationName:Strinf,object:AnyObject)
//    func removeNotifcation(notificationName:Strinf,class : Any)
//}



// hasable
class A {
    
}

let dict = [1:"dfb"]
print(dict)

//
//var sum : ((Int,Int) -> Int)
//
//sum(1, 2) = { (a,b) in
//    return a + b
//}

var arr = [1,2,3,4]

arr.map({ $0 * 2 })

extension Array {
    func myMap<Transform>(transformArray: (Element) -> Transform) -> [Transform] {
        var result = [Transform]()
        
        forEach({ element in
            result.append(transformArray(element))
        })
       return result
    }
}

arr.myMap(transformArray: { $0 * 2 })
