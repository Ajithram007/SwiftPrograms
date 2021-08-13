import UIKit

//27/3 => 9 / 3 => 3 / 3 => 1 remainder should be always zero until one
// 12/3 => 4 / 3 => else false

func checkPowerOfThree(number: Int) -> Bool {
    var updatedNumber = number
    
    repeat {
        updatedNumber = updatedNumber / 3
    } while(updatedNumber % 3 == 0)
    
    if updatedNumber == 1 {
        return true
    }
    
    return false
}


print(checkPowerOfThree(number: 81))

