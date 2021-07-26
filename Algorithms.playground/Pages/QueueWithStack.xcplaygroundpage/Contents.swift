//: [Previous](@previous)
//: ## Queue With Stack
import UIKit

struct Stack<T> {
    private var array = [T]()

    mutating func push(obj: T) {
        array.append(obj)
    }

    mutating func pop() -> T? {
        if array.count > 0 {
            return array.popLast()
        }

        return nil
    }

    var peek: T? {
        return array.last
    }

    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var size: Int {
        return array.count
    }
}

struct Queue<T> {
    private var stack = Stack<T>()
    
    mutating func enqueue(_ obj: T) {
        stack.push(obj: obj)
    }
    
    mutating func dequeue() -> T? {
        if stack.isEmpty {
            return nil
        }
        
        if stack.size == 1 {
            return stack.pop()
        }
        
        let temp = stack.pop()!
        let retVal = dequeue()
        stack.push(obj: temp)
        return retVal
    }
}

var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(20)
print(queue.dequeue()!)


//: [Next](@next)
