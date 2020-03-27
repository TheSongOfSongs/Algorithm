import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var combinedArr: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: priorities.count)
    var answer = 0
    var tempFirst = 0
    var tempFirstLoca = -1
    
    for i in 0..<priorities.count {
        combinedArr[i][0] = priorities[i]
        combinedArr[i][1] = i
    }
    
    var i = 0
    
    while !combinedArr.isEmpty {
        i += 1
        
        tempFirst = combinedArr.first![0]
        tempFirstLoca = combinedArr.first![1]
        
        combinedArr.remove(at: 0)
        
        if combinedArr.isEmpty { return answer + 1}
        
        if tempFirst < combinedArr.max(by: {$0[0] < $1[0]})![0] {
            combinedArr.append([tempFirst, tempFirstLoca])
        } else {
            answer += 1
            if tempFirstLoca == location {
                return answer
            }
            
        }
    }
    
    return answer
}
