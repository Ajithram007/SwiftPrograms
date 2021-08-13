import UIKit

// [1, 9, 3, 10, 4, 20, 2]
//{36, 41, 56, 35, 44, 33, 34, 92, 43, 32, 42}

//[1 -> 1, 9 -> 1, 3 -> 1, 10 -> 1, 4 -> 1, 20 -> 1, 2 -> 1]

//key is present and not nil

//[1 -> 0, 2 -> 0, 3 -> 0, 4 -> 0, 5 ==nil ]  ==> 4
//[9-> 0, 10 -> 0, 11 == nil] ==> 2 (it wont)
//[20 -> 0, 21 == nil] ==> 1(it wont)

// Do the same each time by decrementing the value

func findLongestConsecutiveSubsequence(_ inputArray: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    var maxSubSet = 0
    
    for value in inputArray {
        dict[value] = 1
    }
    
    for value in inputArray {
        var frontValue = value + 1
        var backValue = value
        var counter = 0
        
        while(((dict[backValue]) != nil) && dict[backValue] != 0) {
            dict[backValue] = 0
            backValue = backValue - 1
            counter = counter + 1
        }
        
        while(((dict[frontValue]) != nil) && dict[frontValue] != 0) {
            dict[frontValue] = 0
            frontValue = frontValue + 1
            counter = counter + 1
        }
        
        if counter > maxSubSet {
            maxSubSet = counter
        }
    }
    return maxSubSet
}

print(findLongestConsecutiveSubsequence([36, 41, 56, 35, 44, 33, 34, 92, 43, 32, 42]))

