import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let str1 = strArr(str1)
    let str2 = strArr(str2)
    
    var str1Dict: [String: Int] = [:]
    for str in str1 {
        str1Dict[str] = (str1Dict[str] ?? 0) + 1
    }
    
    var str2Dict: [String: Int] = [:]
    for str in str2 {
        str2Dict[str] = (str2Dict[str] ?? 0) + 1
    }
    
    let str1Keys = str1Dict.keys.map({ String($0) })
    let str2Keys = str2Dict.keys.map({ String($0) })
    
    var interSectionCount = 0
    for key in str1Keys {
        if str1Keys.contains(key) {
            interSectionCount += min(str1Dict[key] ?? 0, str2Dict[key] ?? 0)
        }
    }
    
    var unionCount = 0
    let keySets = Set(str1Keys).union(Set(str2Keys))
    for key in keySets {
        unionCount += max(str1Dict[key] ?? 0, str2Dict[key] ?? 0)
    }
    
    guard unionCount > 0 else {
        return 65536
    }
    
    let result = 65536.0 * Double(interSectionCount) / Double(unionCount)
    return Int(floor(result))
}


func strArr(_ str: String) -> [String] {
    var arr: [String] = []
    let str = Array(str).map({ String($0) })
    
    for i in 0..<str.count-1 {
        // 1. 두 개씩 끊기
        var newStr = str[i] + str[i+1]
        
        // 2. 대문자로 변경
        newStr = newStr.uppercased()
        
        // 3. letter가 아닌 것을 포함하면 버리기
        if newStr.isAlphanumeric {
            arr.append(newStr)
        }
    }
    
    return arr
}

extension String {
    var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^A-Z]", options: .regularExpression) == nil
    }
}

