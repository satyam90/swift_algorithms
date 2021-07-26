//: [Previous](@previous)
//: ## Largest Factorial
import UIKit

func factorial(_ x: Int) {
  var res = [Int](repeating: 0, count: 500)
  res[0] = 1
  var res_size = 1
  
  for k in 2..<x {
    res_size = multiply(k, &res, res_size)
  }
  
  for i in (0..<res_size).reversed() {
    print(res[i], terminator: "")
  }
}

func multiply(_ x: Int, _ res: inout [Int], _ res_size: Int) -> Int {
  var carry = 0
  var re_size = res_size
  
  for i in 0..<re_size {
    let prod = res[i] * x + carry
    res[i] = prod % 10
    carry = prod / 10
  }
  
  while (carry != 0) {
    res[re_size] = carry % 10
    carry = carry / 10
    re_size += 1
  }
  
  return re_size
}

factorial(100)


//: [Next](@next)
