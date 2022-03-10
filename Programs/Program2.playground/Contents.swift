//: Playground - noun: a place where people can play

import UIKit



// read -> sycn
// wait // other task complete // perform
//item 1- 10 10 - 20

//class A {
//var a = 3
//var b = 4
//
//lazy var c = {
//    return self.a + self.b
//}()
//}
//let a = A()
//
//print(a.c) // it should print
//a.a  = 9
//print(a.c) // 13

protocol transformProtocol {
    func transform(_ :Any) -> Any
}

struct viewModelA :transformProtocol {
    func transform(_: Any) -> Any {
        return "A"
    }
}

struct viewModelB : transformProtocol {
    func transform(_: Any) -> Any {
        return "B"
    }
}


class ViewController {
    private var viewModel :transformProtocol?
    
    init(viewModel :transformProtocol){
        self.viewModel = viewModel
    }
    
    func compute() {
        _ = viewModel?.transform("C")
    }
}


// assositated type
// view A(30,40) -> SubviewB (0,0)
//view controller -> view -> background -> .alpha -> height -> superview height
//-> view .30
//-> view -> height -> down -> top -> height -> .3 -> superview -> x
//-> view . 30  -> equal heights -> superview height , view height ->
//vi * .30
//view

// trasition delegate > need too explore

// --o-0--o--
