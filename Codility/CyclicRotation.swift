import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    guard !A.isEmpty else {
        return A
    }
    
    let K = K%A.count
    
    guard A.count > K else { return A }
    
    var arr = A
    let startIndex = arr.index(arr.endIndex, offsetBy: -K)
    let subRange = startIndex..<arr.endIndex
    let subArr = arr[subRange]
    arr.removeSubrange(subRange)
    arr.insert(contentsOf: subArr, at: 0)
    
    return arr
}
