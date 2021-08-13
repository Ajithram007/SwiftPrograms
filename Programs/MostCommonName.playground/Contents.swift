import UIKit

func findMostCommonName(_ value: [String]) -> String {
    var commonNameDict = [String: Int]()
    for name in value {
        commonNameDict[name] = (commonNameDict[name] ?? 0) + 1
    }
    
    var mostCommonName = ""
    for key in commonNameDict.keys {
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            if let maxName = commonNameDict[key], maxName > (commonNameDict[mostCommonName] ?? 0) {
                mostCommonName = key
            }
        }
    }
    return mostCommonName
}


print(findMostCommonName(["Ajith", "ram", "Guru", "Arun", "Ajith", "Arun", "Ajith"]))
