public func solution(_ A : inout [Int]) -> Int {
    var arr: [Bool] = Array(repeating: false, count: A.count)
    
    for index in A {
        if index-1 < arr.count {
            arr[index-1] = true
        } else {
            return 0
        }
    }
    
    return arr.first(where: { !$0 }) == nil ? 1 : 0
}

