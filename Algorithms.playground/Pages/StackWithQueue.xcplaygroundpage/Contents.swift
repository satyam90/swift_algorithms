//: [Previous](@previous)
//: ## Stack With Queue
import UIKit

struct Queue<T> {
    private var data = [T]()
    
    var isEmpty: Bool {
        return data.isEmpty
    }
    
    var count: Int {
        return data.count
    }
    
    mutating func enqueue(_ obj: T) {
        data.append(obj)
    }
    
    mutating func dequeue() -> T? {
        if data.isEmpty {
            return nil
        }
        
        let obj = data.first
        data.remove(at: 0)
        return obj
    }
}


struct Stack<T> {
    private var queue = Queue<T>()
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    
    mutating func push(_ obj: T) {
        let size = queue.count
        
        queue.enqueue(obj)
        
        for _ in 0..<size {
            queue.enqueue(queue.dequeue()!)
        }
    }
    
    mutating func pop() -> T? {
        return queue.dequeue()
    }
}

var stack = Stack<Int>()
stack.push(10)
stack.push(20)
print(stack.pop() ?? -1)
print(stack.pop() ?? -1)


//: [Next](@next)
