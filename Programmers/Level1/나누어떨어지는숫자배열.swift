import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var answer: Array = [-1]
    
    for num in arr where num%divisor == 0 {
        answer.append(num)
    }
    
    if answer.count == 1 {
        return answer
    } else {
        return answer.filter { $0 != -1 }.sorted(by: { $0 < $1 } )
    }
    
}
