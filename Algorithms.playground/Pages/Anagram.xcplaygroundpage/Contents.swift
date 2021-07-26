//: [Previous](@previous)
//: ## Anagram
import UIKit

func isAnagram(str1: String, str2 : String) -> Bool {
   var dict1 = [Character: Int]()
   var dict2 = [Character:Int]()

   for i in str1 {
       if let count = dict1[i] {
           dict1[i] = count + 1
       } else {
           dict1[i] = 1
       }
   }

   for j in str2 {
       if let count = dict2[j] {
          dict2[j] = count + 1
       } else {
          dict2[j] = 1
       }
    }
    
    return dict1 == dict2 ? true : false
}



func funWithAnagrams(text: [String]) -> [String] {
    // Write your code here
    var newList = text
    for i in 0..<text.count {
        for j in (i+1)..<text.count {
            print(i, j)
            if isAnagram(str1: text[i], str2: text[j]) {
                if let index = newList.firstIndex(of: text[j]) {
                    newList.remove(at: index)
                }
            }
        }
    }
    
    return newList.sorted()
}

print(funWithAnagrams(text: ["code", "doce", "oced", "farmer", "frame"]))


//: [Next](@next)

