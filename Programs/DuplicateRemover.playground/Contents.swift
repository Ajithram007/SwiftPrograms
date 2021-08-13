import UIKit

// 5+7+4+3+(6)+1 ==> 26
func calculateDuplicates(inputValues: [Int]) -> Int {
    var setWithOutDuplicates = Set(inputValues)
    let incrementer = 1
    var sum = 0
    var temp = 0
    var tempIncrementer = 0

    for withOutDuplicateValue in setWithOutDuplicates {
        temp = 0
        for (index,value) in inputValues.enumerated() {
            if withOutDuplicateValue == value {
                if temp != 0 {
                    tempIncrementer = index + incrementer
                    repeat {
                        tempIncrementer = tempIncrementer + incrementer
                        setWithOutDuplicates.insert(tempIncrementer)
                    } while (index == setWithOutDuplicates.count)
                }
                temp = temp + 1
            }
        }
    }
    print("Set Without Duplicate \(setWithOutDuplicates)")
    for value in setWithOutDuplicates {
        sum = sum + value
    }
    return(sum)

}

var inputValues = [5,7,4,3,3,1]
//var inputValues = [1,4,5,4,5]
print(inputValues)
print((calculateDuplicates(inputValues: inputValues)))


"""
For the given array, find the sum of the distinct elements. If the array has repeated elements, replace the repeated element by incrementing its index position by 1. If the replaced element is still available in the array, then continue adding 1 until you get a distinct number for replacement.
Print the resulting array along with the sum.
Example: 1.
Input Array: {1,2,3,4,5}
Output: 15
2.
Input Array:
{1,4,5,4,5} Output:
23 [ After replacement the resulting array {1,4,5,6,7} ]
3.
Input Array:
{5,7,4,3,3,1} Output:
26 [ After replacement the resulting array {5,7,4,3,6,1} ]
"""
