//: [Previous](@previous)
//: ## Find Pair
import UIKit

//Find sum from one pair
//func findPair(array: [Int], sum: Int) -> (Int, Int)? {
//    var dict = [Int: Int]()
//    for i in 0..<array.count {
//        if let val = dict[sum-array[i]] {
//            return (val, i)
//        }
//        dict[array[i]] = i
//    }
//
//    return nil
//}
//
//let arr = [8, 7, 2, 5, 3, 1]
//print(findPair(array: arr, sum: 11) ?? "Not found")

//Find sum from 2 pairs

func findPair2(arr1: [Int], arr2: [Int], sum: Int) -> (Int, Int)? {
    var dict = [Int: Int]()
    for elem in 0..<arr1.count {
        dict[arr1[elem]] = elem
    }
    
    for elem in 0..<arr2.count {
        if let val = dict[sum-arr2[elem]] {
            return (val, elem)
        }
    }
    
    return nil
}

let array1 = [1, 2, 4, 5, 7]
let array2 = [5, 6, 3, 4, 8]
print(findPair2(arr1: array1, arr2: array2, sum: 9) ?? "Not found")

//: [Next](@next)
