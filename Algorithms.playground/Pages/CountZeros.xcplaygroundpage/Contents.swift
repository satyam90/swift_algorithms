//: [Previous](@previous)
//: ## Count Zeros
import UIKit

//##Recursion program to find number of zeros
//
func zeroCheck(number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    
    if number % 10 == 0 {
        return 1 + zeroCheck(number: number / 10)
    } else {
        return zeroCheck(number: number / 10)
    }
}

print(zeroCheck(number: 10204))


//: [Next](@next)
