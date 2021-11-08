import Foundation


public func solution(_ A : inout [Int]) -> Int {
    var dict: [Int: Int] = [:]
    
    for value in A {
        if let original = dict[value] {
            dict[value] = original + 1
        } else {
            dict[value] = 1
        }
    }
    
    return dict.filter({ $0.value%2 == 1 }).first!.key
}

