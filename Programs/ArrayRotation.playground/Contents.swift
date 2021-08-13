import UIKit

var array = ["a", "b", "c", "d", "e"]
// If d is selected then we should get "deabc"
var selected = "d"

func getRotatedArray(array: [String], searchValue: String) -> [String]{
    var beforeFinding: [String] = []
    var afterFinding: [String] = []

    for value in array {
        if value == searchValue || afterFinding.count > 0 {
            afterFinding.append(value)
        } else {
            beforeFinding.append(value)
        }
    }
    
    return afterFinding + beforeFinding
}

print(getRotatedArray(array: array, searchValue: selected))
