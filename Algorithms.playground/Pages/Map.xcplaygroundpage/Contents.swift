//: [Previous](@previous)
//: ## Custom Map
import UIKit

var str = "Hello, playground"

let arrayInput = ["One", "Two", "Three"]
let lowerCase = arrayInput.map{ $0.lowercased() }

extension Array {
    func myMap<T>(_ inputMap : (Element)->T) -> [T] {
        var dest = [T]()
        for str in self {
            dest.append(inputMap(str))
        }
        return dest
    }
}

let newResult = arrayInput.myMap { (str) -> String in
    return str.lowercased()
}

print(newResult)


//: [Next](@next)
