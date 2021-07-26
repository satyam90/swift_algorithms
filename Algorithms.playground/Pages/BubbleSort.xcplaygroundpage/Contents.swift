//: [Previous](@previous)
//: ## Bubble Sort

import UIKit


var input = [64, 25, 12, 22, 11]

//bubble sort
for x in 0..<input.count {
    for y in x+1..<input.count {
        if input[x] > input[y] {
            input.swapAt(x, y)
        }
    }
}
print("Bubble Sort: ", input)

//: [Next](@next)
