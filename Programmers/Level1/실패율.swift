import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var bridge: [Int] = Array(repeating: 0, count: N+1)
    var ratios: [Int:Double] = [:]
    var result: [Int] = []
    var parent = 0
    
    for num in stages {
        bridge[num-1] += 1
    }
    for i in 0..<N {
        parent = 0
        for j in i..<bridge.count {
            parent += bridge[j]
        }
        ratios[i] = Double(bridge[i]) / Double(parent)
    }

    
    for i in ratios.sorted (by: { $0.0 < $1.0 }).sorted (by: { $0.1 > $1.1 }) {
        result.append(i.key+1)
    }
    
    return result
}
