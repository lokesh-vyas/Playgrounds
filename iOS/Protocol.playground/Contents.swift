import UIKit


protocol ABC:AnyObject {
    func didSuccess()
}
//
//
class A {
    weak var delegate : ABC?
    func callDidSuccess() {
        delegate?.didSuccess()
    }
}

class B {
    var a : A?
    func registerDelegate() {
        a?.delegate = self
    }
}

extension B: ABC {
    func didSuccess() {
        print("Did Success call here")
    }
}


let b = B()
b.a = A()
b.registerDelegate()
b.a?.callDidSuccess()


class NonEscapingClass {
    // non Escaping
    func fetchData(didSuccess:() -> Void) {
        fetchDataNonEscape(didSuccess: {
           //
        })
        //
    }

    func fetchDataNonEscape(didSuccess:() -> Void) {
        didSuccess()
        print("Any")
    }

    // Ecaping
    func ApiFetch(didSuccess:() -> Void) {
        NetworkCall(didSuccess: {

        })
    }

    func NetworkCall(didSuccess:@escaping () -> Void) {
        DispatchQueue.main.async {
            didSuccess()
        }
    }
}
