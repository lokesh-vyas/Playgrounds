import UIKit


class NonEscapingClass {
    // non Escaping
    func fetchData(didSuccess:() -> Void) {
        fetchDataNonEscape(didSuccess: {

        })
    }

    func fetchDataNonEscape(didSuccess:() -> Void) {
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


