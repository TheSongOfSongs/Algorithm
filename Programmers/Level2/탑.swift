import Foundation

func solution(_ heights:[Int]) -> [Int] {
    var answer: [Int] = Array(repeating: 0, count: heights.count)
    let heightsCount = heights.count
    
    for i in 0..<heightsCount {
        let lastTop = heights[heightsCount-i-1]

        for j in 1..<heightsCount-i {
            if heights[heightsCount-i-1-j] > lastTop {
                answer[heightsCount-i-1] = heightsCount-i-j
                break
            }
        }
    }
    
    return answer
}
