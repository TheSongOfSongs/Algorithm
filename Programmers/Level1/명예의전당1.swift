import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    // 1. 배열 원소 개수가 k개보다 큰지 확인
    // 2-1. k개보다 적으면 그냥 추가
    // 2-2. k개보다 많으면 비교하고 교체하기
    // 3. score 배열에 추가
    
    var kings: [Int] = []
    var result: [Int] = []
    
    for s in score {
        kings.append(s)
        kings = kings.sorted()
        
        if kings.count > k {
            kings.removeFirst()
        }
        
        result.append(kings.min()!)
    }
    
    return result
}
