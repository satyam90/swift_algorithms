//: [Previous](@previous)
//: ## Next Great Element

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

func printNGE(input: [Int]) {
    var stack = Stack<Int>()
    stack.push(obj: input[0])
    
    for i in 1..<input.count {
        if stack.isEmpty {
            stack.push(obj: input[i])
            continue
        }
        
        while !stack.isEmpty && stack.peek! < input[i] {
            print("\(stack.peek!) --> \(input[i])" )
            stack.pop()
        }
        
        stack.push(obj: input[i])
    }
    
    while !stack.isEmpty {
        print("\(stack.pop()!) --> -1" )
    }
}

printNGE(input: [11, 3, 13, 21])


//: [Next](@next)
