import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var result = 0
    
    var dict: [Int: Int] = [:]
    for item in tangerine {
        dict[item] = (dict[item] ?? 0) + 1
    }
    
    var k = k
    let sortedDict = dict.sorted(by: { $0.value > $1.value })
    for (_, value) in sortedDict {
        if k <= 0 {
            break
        }
        
        k -= value
        result += 1
    }
    
    return result
}
