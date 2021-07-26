//: [Previous](@previous)
//: ## Find Divisors
import UIKit


func printDivisors(number: Int) {
    var cnt = 0
    var divisors = [Int]()
    for i in 1...Int(sqrt(Double(number))) {
        if number.isMultiple(of: i) {
            if (number/i == i) {
                divisors.append(i)
                cnt += 1
            } else {
                divisors.append(i)
                divisors.append(number/i)
                cnt += 2
            }
        }
    }
    
    print("Divisors: \(divisors)")
    print("Total divisors: \(cnt)")
}

printDivisors(number: 100)


//: [Next](@next)
