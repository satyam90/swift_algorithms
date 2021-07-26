//: [Previous](@previous)
//: ## Move Zeros
import UIKit

func moveZerosToEnd(array: inout [Int]) {
    var count = 0
    for i in 1..<array.count {
        if array[i] != 0 {
            let temp = array[i]
            array[i] = array[count]
            array[count] = temp
            count += 1
        }
    }
}

var arr = [0,2,9,0,3,0,5]
moveZerosToEnd(array: &arr)
print(arr)


func moveZerosToBeginning(array: inout [Int]) {
    var count = 0
    for i in 0..<array.count {
        if array[i] == 0 {
            let temp = array[i]
            array[i] = array[count]
            array[count] = temp
            count += 1
        }
    }
}

var arr1 = [2,9,0,3,0,5]
moveZerosToBeginning(array: &arr1)
print(arr1)


//: [Next](@next)
