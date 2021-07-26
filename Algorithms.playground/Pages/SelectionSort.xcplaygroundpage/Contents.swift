//: [Previous](@previous)
//: ## Selection Sort
import UIKit


var input = [64, 25, 12, 22, 11]
    
//selection sort
for i in 0..<input.count {
    var minIndex = i
    for j in i+1..<input.count {
        if input[j] < input[i] {
            minIndex = j
        }
    }
    if minIndex != i {
        input.swapAt(i, minIndex)
    }
}

print("Selection Sort: ", input)



//: [Next](@next)
