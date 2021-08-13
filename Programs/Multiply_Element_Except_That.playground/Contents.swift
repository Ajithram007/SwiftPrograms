import UIKit

var input = [2, 4, 5, 0]
// Multiply remaining element except the index
// [0, 0, 0, 40]

func doSomeOperation(inputArray: [Int]) -> [Int] {
    var checkIsZeroPresent: Bool = false
    var multiplier = 1
    var numberOfZeros = 0
    var outputArray: [Int] = []
    
    for value in inputArray {
        var newValue = value
        if newValue == 0 {
            checkIsZeroPresent = true
            numberOfZeros = numberOfZeros + 1
            newValue = 1
        }
        multiplier = multiplier * newValue
    }
    
    if checkIsZeroPresent {
        for value in inputArray {
            if numberOfZeros > 1 {
                multiplier = 0
            }
            outputArray.append(value == 0 ? multiplier : 0)
        }
    } else {
        for value in inputArray {
            outputArray.append(multiplier/value)
        }
    }
    
    return outputArray
}

print(doSomeOperation(inputArray: input))
