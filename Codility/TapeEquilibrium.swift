public func solution(_ A : inout [Int]) -> Int {
    var left = A[0]
    var right = A.reduce(0, +) - A[0]
    var result = diff(left: left, right: right)
    
    for i in 2..<A.count {
        left = left + A[i-1]
        right = right - A[i-1]
        
        let num = diff(left: left, right: right)
        if num <= result {
            result = num
        }
    }
    
    return result
}

func diff(left: Int, right: Int) -> Int {
    let diff = left - right
    return diff < 0 ? diff*(-1) : diff
}
