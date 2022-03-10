import UIKit

class MyDispatchGroup {
    
    private var groupCounter = 0
    private var completionBlock: (() -> ())?
    
    func enter() {
        groupCounter += 1
    }
    
    func leave() {
        groupCounter -= 1
        if groupCounter == 0 {
            completionBlock?()
        }
    }
    
    func notify(completion: @escaping () -> ()) {
        completionBlock = completion
    } 
}


let queue = DispatchQueue.global()
let concuQ = DispatchQueue(label: "com.ss.sssaw", attributes: .concurrent)
let serialQ = DispatchQueue(label: "com.ss.ssss")

func print1() {
    //    print("1")
    //
    //    queue.async {
    //        print("2")
    //        queue.sync {
    //            print("3")
    //        }
    //        print("4")
    //    }
    //    print("5")
    
    queue.async {
        concuQ.async {
            for i in 1...5 {
                print(i)
            }
        }
        serialQ.async {
            for i in 6...10 {
                print(i)
            }
        }
    }
}

//print1()

