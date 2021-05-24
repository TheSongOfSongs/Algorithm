func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    
    for i in 0..<absolutes.count {
        let sign = signs[i] ? 1 : -1
        result += absolutes[i] * sign
    }
    
    return result
}
