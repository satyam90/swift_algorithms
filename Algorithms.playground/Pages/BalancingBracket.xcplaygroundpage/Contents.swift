//: [Previous](@previous)
//: ## Balancing Brackets

import UIKit

//##Find the balance of brackets {}, [], <>, ()
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

let brackets = [
    "{": "}",
    "[": "]",
    "<": ">",
    "(": ")"
]

var stack = Stack<String>()

func validate(input: String) -> Bool {
    let charArray = Array(input)
    let strArray = charArray.map { String($0) }
    for ch in strArray {
        if brackets[ch] != nil {
            stack.push(obj: ch)
        } else if !stack.isEmpty && brackets[stack.peek!] == ch {
            stack.pop()
        } else {
            return false
        }
    }

    return stack.isEmpty
}

//print(validate(input: "{()}[]"))
print(validate(input:"({[]})"   ))


//: [Next](@next)
