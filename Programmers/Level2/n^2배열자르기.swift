import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var answer: [Int] = []
    
    for i in Int(left)...Int(right) {
        let column = i%n
        let row = i/n
        
        if column > row {
            answer.append(column+1)
        } else {
            answer.append(row+1)
        }
    }
    
    
    return answer
}
