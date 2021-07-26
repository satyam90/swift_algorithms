//: [Previous](@previous)
//: ## Stack
import UIKit

//Print the next greatest element of each element right on the
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
}


//: [Next](@next)
