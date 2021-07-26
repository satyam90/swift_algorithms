//: [Previous](@previous)

//: ## Combinations 2
import UIKit


//Permutation of words in a string
var sampleArray = [String]()
func permutations(_ n:Int, _ a: inout Array<Character>) {
    if n == 1 {
        print(a)
        return
    }
    for i in 0..<n-1 {
        permutations(n-1, &a)
        a.swapAt(n-1, (n % 2 == 1) ? 0 : i)
    }
    permutations(n-1,&a)
}

var arr = Array("ABC")
permutations(arr.count, &arr)

//Permutation of words in a string in different method
extension Array {
    func decompose() -> (Iterator.Element, [Iterator.Element])? {
        guard let x = first else { return nil }
        return (x, Array(self[1..<count]))
    }
}

func between<T>(x: T, _ ys: [T]) -> [[T]] {
    guard let (head, tail) = ys.decompose() else { return [[x]] }
    return [[x] + ys] + between(x: x, tail).map { [head] + $0 }
}

let example = between(x: 0, [1, 2, 3])
// example = [[0, 1, 2, 3], [1, 0, 2, 3], [1, 2, 0, 3], [1, 2, 3, 0]]

func permutations<T>(xs: [T]) -> [[T]] {
    guard let (head, tail) = xs.decompose() else {
        return [[]]
    }
    
    return permutations(xs: tail).flatMap { between(x: head, $0) }
}

let str = "Satyam"
let p = permutations(xs: Array(str))
print(p)


//: [Next](@next)
