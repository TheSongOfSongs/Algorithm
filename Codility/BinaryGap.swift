import Foundation

public func solution(_ N : Int) -> Int {
    var binary: [Int] = []
    var dividend = N
    while true {
        binary.append(dividend%2)
        dividend = dividend/2
        
        if dividend < 2 {
            binary.append(1)
            break
        }
    }
    
    var result: [Int] = []
    var start = -1
    var length = 0
    for (i, value) in binary.enumerated() {
        if value == 1 {
            if start != -1 {
                result.append(length)
            }
            
            start = i
            length = 0
        } else {
            length += 1
        }
    }
    
    return result.max() ?? 0
}
