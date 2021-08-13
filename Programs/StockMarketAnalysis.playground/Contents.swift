import UIKit

func calculateStockProfit(inputValue: [Int]) -> Int{
    var startValue = 0
    var startIndex = 0
    var prevValue = 0
    var result = 0

    for i in 0..<inputValue.count - 1 {
        if inputValue[i] < inputValue[i+1] {
            startValue = inputValue[i]
            startIndex = i + 1
            break
        }
    }
    
    if startValue == 0 {
        return 0
    }
    
    for i in startIndex..<inputValue.count {
        if (inputValue[i] - startValue) > prevValue {
            prevValue = inputValue[i] - startValue
            print(prevValue)
        } else {
            result = result + prevValue
            prevValue = 0
            startValue = inputValue[i]
        }
    }
    result = result + prevValue
    return result
}

//var inputValue = [100,180,260,310,40,535,695]
//var inputValue = [100,180,260,310,40,30,20]
//var inputValue = [100,90,80,70,60,30,20]
var inputValue = [100, 90, 750, 30, 800,45,900]

print("Final Profit \(calculateStockProfit(inputValue: inputValue))")


//(750-90)+(800-30)+(900-45) ==> 2285 logic

//660
//770
//855
