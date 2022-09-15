import Foundation

func solution(_ n:Int) -> Int {
    // 1. 10진수 -> 2진수로 변환하기
    let binary = String(n, radix: 2)
    
    
    let oneCount = binary.filter({ $0 == "1" }).count
    var nextN = n
    
    while true {
        nextN += 1
        
        let nextNOneCount = String(nextN, radix: 2).filter({ $0 == "1" }).count
        
        if nextNOneCount == oneCount {
            break
        }
    }
    
    return nextN
}
