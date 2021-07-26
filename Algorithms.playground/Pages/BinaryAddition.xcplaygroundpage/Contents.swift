//: [Previous](@previous)
//: ## Binary Addition

import UIKit


func isBinary(num: Int) -> Bool {
    if num == 0 || num == 1  {
        return true
    }
    
    var checkNum = num
    while checkNum > 0 {
        let temp = checkNum % 10
        if temp != 0 && temp != 1 {
            return false
        }
        
        checkNum = checkNum /  10
    }
    
    return true
}

func addBinary2(a: Int, b: Int) -> Int {
    if !isBinary(num: a) || !isBinary(num: b) {
        return -1
    }
    
    var reminder = 0
    var sum = [Int]()
    var firstNum = a
    var secNum = b
    while firstNum != 0 || secNum != 0 {
        sum.append((firstNum % 10 + secNum % 10 + reminder) % 2)
        reminder = (firstNum % 10 + secNum % 10 + reminder) / 2
        firstNum /= 10
        secNum /= 10
    }

    if reminder > 0 {
        sum.append(reminder)
    }

    sum = sum.reduce([], { [$1] + $0 })
    var count = 0
    var total = 0
    while count < sum.count {
        total = total * 10 + sum[count]
        count += 1
    }
    
    return total
}

print(addBinary2(a: 101, b: 1))


//: [Next](@next)
