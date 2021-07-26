//: [Previous](@previous)
//: ## Combinations
import UIKit

func combination(str: String, current: String = "") {
    let len = str.count
    if len == 0 {
        print(current)
    } else {
        let strArray = Array(str)
        for i in 0..<len {
            let left = String(strArray[0..<i])
            let right = String(strArray[i+1..<len])
            combination(str: left + right, current: current + String(strArray[i]))
        }
    }
}

combination(str: "abc")

//: [Next](@next)
