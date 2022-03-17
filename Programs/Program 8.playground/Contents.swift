import UIKit
//
//let queue = DispatchQueue(label: "com.queue")
//queue.async{
//    DispatchQueue.main.sync{
//        print(11)
//    }
//    DispatchQueue.main.sync{
//         print(22)
//    }
//
//}
//print("Hekk")
//queue.sync{
//    print(33)
//}


class B {
    var vehicle = "Cars"
}
var things: B = B()

let closure = { [things] in
    print("I love \(things.vehicle)")
}

things.vehicle = "Aerplane"

closure()

// Method Dispatch ,Table Dispatch

// LayoutIfNeeded - Sync call for update cycle
// SetNeedLayout - Async Call for update cycle

class KAPS {
    var authToken: String
    init(token: String) {
        self.authToken = token
    }
}

class Demo {
    var auth : String = "123"
    
    lazy var kapsObj : KAPS = {
        print("Hello")
        return KAPS(token: auth)
    }()
    
    lazy var prp : String = {
        return auth
    }()
    
    var drp: String {
        return auth
    }
}

var demo = Demo()
print(demo.kapsObj.authToken)       // 123
print(demo.prp)                     // 123
print(demo.drp)                     // 123
demo.auth = "567"
print(demo.drp)                     // 567
print(demo.kapsObj.authToken)       // 123
print(demo.prp)                     // 123


//func increment(arr:[Int],byNumber:Int) {
//    var sum = 0
//    var cary = 0
//    for 0 in 0..<arr.coun {
//        sum = sum + (item *
//    }
//}

//let arr1 = [1,2,5]
//increment(arr: arr1, byNumber: 1)

