import Foundation

func solution(_ s:String) -> Int {
    let count = s.count/2 + 1
    var arr: [Int] = [s.count]
    
    for i in 1..<count {
        arr.append(convertedStringCount(string: s, per: i))
    }
    
    return arr.min()!
}

func convertedStringCount(string: String, per: Int) -> Int {
    var result: [String] = []
    
    var temp = ""
    for (index, str) in string.enumerated() {
        temp += String(str)
        
        if (index)%per == (per-1) {
            result.append(temp)
            temp = ""
        }
    }
    
    if !temp.isEmpty {
        result.append(temp)
    }
    
    
    var countInfo: [Int: Int] = [:] //index: count
    
    var index = 1
    while index < result.count {
        if result[index] == result[index-1] {
            let value = countInfo[index-1] ?? 1
            countInfo.updateValue(value + 1, forKey: index-1)
            result.remove(at: index)
        } else {
            index += 1
        }
    }
    
    var count = result.joined().count
    
    for value in countInfo.values {
        count += "\(value)".count
    }
    
    return count
}
