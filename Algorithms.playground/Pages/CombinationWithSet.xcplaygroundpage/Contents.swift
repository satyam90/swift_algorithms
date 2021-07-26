//: [Previous](@previous)
//: ## Combinations With Set
import Foundation

var groups = [[Int]]()

func findDinnerParties(friends: [Int], tableSize: Int) {
  combineFriends(friends: friends, tableSize: tableSize)
  print(groups)
}

func combineFriends(friends: [Int], tableSize: Int, pos: Int = 0, group: [Int] = [Int]()) {
    if group.count == tableSize {
      groups.append(group)
    } else if pos < friends.count {
      //Leave
      combineFriends(friends: friends, tableSize: tableSize, pos: pos + 1, group: group)
      
      //Take
      var newGroup = group
      newGroup.append(friends[pos])
      combineFriends(friends: friends, tableSize: tableSize, pos: pos + 1, group: newGroup)
    }
}

findDinnerParties(friends: [1,2,3,4,5], tableSize: 3)


//: [Next](@next)
