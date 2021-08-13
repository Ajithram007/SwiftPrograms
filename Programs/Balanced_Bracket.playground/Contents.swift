import UIKit

var str = "Hello, playground"

func isValid(input: String) -> Bool {
    let bracketDict: [String: String] = [")": "(", "}": "{", "]" : "["]
    let openBracket: Set<String> = ["(", "{", "["]
    let closedBracket: Set<String> = [")", "}", "]"]
    
    var list: [String] = []
    for value in input {
        if openBracket.contains(String(value)) {
            list.append(String(value))
        } else if closedBracket.contains(String(value)) {
            if list.last == bracketDict[String(value)] {
                list.removeLast()
            }
        }
    }
    if list.count == 0 {
        return true
    }
    
    return false
}

var sampleInput = "(({}))"
print(isValid(input: sampleInput))

