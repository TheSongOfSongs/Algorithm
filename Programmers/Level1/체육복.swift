import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var resultArr: [Int] = Array(repeating: 1, count: n)
    var temp = 0
    
    for i in 0..<reserve.count {
        temp = reserve[i]
        resultArr[temp-1] = 2
    }
    
    for i in 0..<lost.count {
        temp = lost[i]
        resultArr[temp-1] -= 1
    }
    
    for i in 0..<n where resultArr[i] == 0 {
        if i > 0 && resultArr[i-1] == 2 {
            resultArr[i-1] -= 1
            resultArr[i] = 1
        } else if i+1 < n && resultArr[i+1] == 2 {
            resultArr[i+1] -= 1
            resultArr[i] = 1
        }
        
    }
    return resultArr.filter { $0 >= 1 }.count
}
