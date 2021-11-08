import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var arr: [Bool] = Array(repeating: false, count: A.count+1)
    
    A.forEach { value in
        arr[value-1] = true
    }
    
    return arr.firstIndex(where: { !$0 })! + 1
}
