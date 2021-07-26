//: [Previous](@previous)
//: ## Fewest Coins
import UIKit

print(fewestCoins(coins: "dabbabcd"))

func fewestCoins(coins: String) -> Int{
    let distinct = Set(coins)
    var counter = 0
    for i in 0..<coins.count-distinct.count {
        let range = coins.index(coins.startIndex, offsetBy: i)..<coins.index(coins.startIndex, offsetBy: i+distinct.count)
        let subStr = coins[range]
        print(subStr)
        var found = true
        for chr in subStr {
            print(type(of: chr))
            if !distinct.contains(chr) {
                found = false
                break
            }
        }
        if found {
            counter += 1
        }
    }
    
    return counter
}


//: [Next](@next)
