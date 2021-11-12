public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var set: Set<Int> = []
    
    for (index, i) in A.enumerated() {
        set.insert(i)
        
        if set.count == X {
            return index
        }
    }
    
    return -1
}
