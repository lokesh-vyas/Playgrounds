import UIKit

class ThreadSafeQueue<T> {
    private let queue : DispatchQueue
    private var data : [T]
    
    init(){
        self.queue = DispatchQueue(label: "ThreadSafeQueue")
        self.data = []
    }
    
    deinit {
        self.data.removeAll()
    }
    
    var isEmpty : Bool {
        self.queue.sync {
            [weak self] in
            self?.data.isEmpty ?? true
        }
    }
    
    func push(_ element :T) {
        self.queue.async {
            [weak self] in
            self?.data.append(element)
        }
    }
    
    func take() -> T? {
        if self.isEmpty { return nil }
        return queue.sync { data[0] }
    }
}

var threadSafe : ThreadSafeQueue<Any>? = ThreadSafeQueue()
threadSafe?.push(1)
threadSafe?.take()
threadSafe?.isEmpty
