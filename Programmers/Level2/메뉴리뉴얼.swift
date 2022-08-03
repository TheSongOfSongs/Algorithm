func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var menuSet: [String: Int] = [:]
    var result: [String] = []
    
    func combination(origin: [Character], n: Int, resultString: String) {
        if !resultString.isEmpty,
           course.contains(resultString.count) {
            menuSet[resultString] = (menuSet[resultString] ?? 0) + 1
        }
        
        for i in n+1..<origin.count {
            combination(origin: origin, n: i, resultString: "\(resultString)\(origin[i])")
        }
    }
    
    for order in orders {
        let menus: [Character] = order.map { $0 }.sorted()
        for i in menus.indices {
            combination(origin: menus, n: i, resultString: "\(menus[i])")
        }
    }
    
    for n in course {
        let max = menuSet.filter { $0.key.count == n && $0.value > 1 }.max { $0.value < $1.value }
        
        if let max = max {
            menuSet.filter { $0.key.count == n }.forEach {
                if $0.value == max.value {
                    result.append($0.key)
                }
            }
        }
    }
    
    return result.sorted()
}
