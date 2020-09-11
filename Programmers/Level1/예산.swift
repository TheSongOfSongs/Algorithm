import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0
    var budget = budget
    let d = d.sorted()
    
    for money in d {
        if budget - money >= 0 {
            budget -= money
            result += 1
        } else {
            return result
        }
    }
    
    return result
}
