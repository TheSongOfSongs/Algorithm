import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var count = 0
    var zeroCount = 0
    
    while s != "1" {
        // 1. 0을 전부 없애기
        count += 1
        zeroCount += s.filter({ $0 == "0" }).count
        s = s.filter({ $0 == "1" })
        
        // 2. 없앤 값의 길이로 다시 s할당하기
        s = String(s.count, radix: 2)
    }
    
    return [count, zeroCount]
}
