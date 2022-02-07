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
