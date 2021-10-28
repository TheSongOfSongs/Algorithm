import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let a = A.sorted(by: { $0 < $1 })
    let b = B.sorted(by: { $0 > $1 })
    var result: [Int] = []
    
    for i in 0..<A.count {
        result.append(a[i] * b[i])
    }
    
    
    return result.reduce(0, +)
}

