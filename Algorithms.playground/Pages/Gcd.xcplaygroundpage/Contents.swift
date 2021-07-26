//: [Previous](@previous)
//: ## GCD
import UIKit

func gcd(m: Int, n: Int) -> Int {
    return m % n != 0 ? gcd(m: n, n: m % n) : n
}

print(gcd(m: 52, n: 39))


//: [Next](@next)
