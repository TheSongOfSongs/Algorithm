import Foundation

func solution(_ n:Int64) -> [Int] {
    var num = Int(n)
    var result: [Int] = []
    var addNum: Int
    
    repeat {
        addNum = num % 10
        num = num / 10
        result.append(addNum)
    } while(num > 0)
    
    return result
}
