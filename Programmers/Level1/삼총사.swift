func solution(_ number:[Int]) -> Int {
    return combination(number, 3).map({ $0.reduce(0, +) }).filter({ $0 == 0 }).count
}

func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    
    func combi(_ index: Int, _ now: [T]) {
        guard now.count < k else {
            result.append(now)
            return
        }
        
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    
    combi(0, [])
    return result
}
