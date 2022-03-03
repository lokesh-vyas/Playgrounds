//: Playground - noun: a place where people can play

import UIKit

//class Master {
//    lazy var detail: Detail = Detail(master: self)
//
//    init() {
//        print("Master init")
//    }
//
//    deinit {
//        print("Master deinit")
//    }
//}
//
//class Detail {
//     weak var master: Master?
//
//    init(master: Master) {
//        print("Detail init")
//        self.master = master
//    }
//
//    deinit {
//        print("Detail deinit")
//    }
//}
//
//func createMaster() {
//    var master: Master = Master()
//    var detail = master.detail
//}
//
//createMaster()

//...................................///......................
//class A {
//    var name = "Lokesh"
//    deinit {
//        print("Denit")
//    }
//}
//
//var a : A?
//var b : A?
//a = A()
//b = a
//a = nil
//print(b?.name)

/////,.............................////////////////////////////////////////

//class Hello {
//    var closure: (()->())?
//
//    let str = "Hello"
//
//    init() {
//       closure = helloWorld      // Retain count is here
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


// to solve retain count
// weak self at 59  clouser = { [weak self] self?.helloWorld() }

/////,.............................////////////////////////////////////////

var answer:String = ""
class Post {
    let title :String
    let link: String
     var owner:User?   // weak to call answer
    
    init(title:String,link:String) {
        self.title = title
        self.link = link
    }
    
    deinit {
        answer += "Swift Programming"
    }
}

class User {
    let name :String
    var post:Post?
    
    init(name:String) {
        self.name = name
    }
    
    deinit {
        answer += "I Love "
    }
}

func soution() -> String {
    var post:Post? = Post(title: "About Swift", link: "https://sndnd")
    var user:User? = User(name: "John")
    
    post!.owner = user
    user!.post = post
    
    post = nil
    user = nil
    
    return answer
}

soution()
/////,.............................////////////////////////////////////////
