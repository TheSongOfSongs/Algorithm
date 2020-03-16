import Foundation

func solution(_ arr:[Int]) -> [Int] {
    guard arr.count != 1 else {
        return [-1]
    }
    
    var answer = arr
    answer.remove(at: answer.firstIndex(of: answer.min()!)!)
    return answer
}
