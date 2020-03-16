import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var answer: Array<Int64> = []
    let temp = x
    
    for i in 1...n {
        answer.append(Int64(temp*i))
    }
    
    return answer
}
