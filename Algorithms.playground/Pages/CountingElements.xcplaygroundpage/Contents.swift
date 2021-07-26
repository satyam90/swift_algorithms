//: [Previous](@previous)
//: ## Counting Elements
import UIKit

//###### Program for counting numberof repeated elements
let products = ["Apple", "Egg", "Orange", "Apple", "Orange", "Banana", "Egg", "Egg"]

let eleDict = products.reduce([:]) { (input, product) -> [String: Int] in
    var updatedMap = input
    if let value = updatedMap[product] {
        updatedMap[product] = value + 1
    } else {
        updatedMap[product] = 1
    }

    return updatedMap
}

print(eleDict)


//: [Next](@next)
