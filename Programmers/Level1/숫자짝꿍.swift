import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var xDict: [Character: Int] = [:]
    var yDict: [Character: Int] = [:]
    
    for ch in X {
        xDict[ch] = (xDict[ch] ?? 0) + 1
    }
    
    for ch in Y {
        yDict[ch] = (yDict[ch] ?? 0) + 1
    }
    
    let xSet = Set(xDict.keys)
    let ySet = Set(yDict.keys)
    let set = xSet.intersection(ySet).sorted(by: >)
    
    var result = ""
    
    if set.isEmpty {
        return "-1"
    } else if set.first! == "0" {
        return "0"
    }
    
    for key in set {
        let n = min(xDict[key]!, yDict[key]!)
        
        for _ in 0..<n {
            result += "\(key)"
        }
    }
    
    return result
}
