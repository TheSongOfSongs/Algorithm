import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    var answer = strings.sorted()
    for i in stride(from: answer.count-1, to: 0, by: -1) {
        for j in 0..<i {
            if answer[j][answer[j].index(answer[j].startIndex, offsetBy: n)] > answer[j+1][answer[j+1].index(answer[j+1].startIndex, offsetBy: n)] {
                answer.swapAt(j, j+1)
            }
        }
    }
    return answer
}
