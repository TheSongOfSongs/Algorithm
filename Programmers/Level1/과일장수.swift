import Foundation

// 최저사과점수 k점, 사과 m개
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let score = score.sorted(by: >)
    var result = 0
    var index = m-1
    
    while index < score.count {
        result += score[index] * m
        index += m
    }
    
    return result
}
