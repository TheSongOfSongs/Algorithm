import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var win_nums = win_nums
    var result = 0
    var zeroCount = 0
    
    for i in 0..<6 {
        if lottos[i] == 0 {
            zeroCount += 1
        } else if let index = win_nums.firstIndex(of: lottos[i]) {
            result += 1
            win_nums.remove(at: index)
        }
    }
    
    let min = 7 - result
    let max =  7 - result - zeroCount
    
    return [ max > 6 ? 6 : max, min > 6 ? 6 : min]
}
