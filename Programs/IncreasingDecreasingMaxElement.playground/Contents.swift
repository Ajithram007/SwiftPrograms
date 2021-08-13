import UIKit

// 0,1,3,5,10,7,6,3,2,1
// Left - increasing
// Right - decreasing
// O/p ==> 10


var numberArray = [0, 1, 3, 5, 10, 7, 6, 3, 2, 1]
//var numberArray = [0, 1, 3, 5, 10, 7, 6, 3]


func findMaxElement(left: Int, right: Int, array: [Int]) {
    let mid = (left + right) / 2
    let midValue = array[mid]
    
    
    // 5 < 10 > 7
    if (midValue > array[mid - 1]) && (midValue > array[mid + 1]) {
        print(midValue)
    }
    
}

findMaxElement(left: 0, right: (numberArray.count - 1), array: numberArray)


var numberArray1 = [10, 12, 4, 6, 9, 8, 13, 3, 2, 1]
func findSubArrayOnRage(array: [Int], value: Int) {
    // sorted [1,2,3,4,6,8,9,10,12,13]
}

findSubArrayOnRage(array: numberArray1, value: 20)
