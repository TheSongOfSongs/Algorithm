import Foundation

func solution(_ n:Int) -> String {
    var result: String = ""
    let pattern: String = "수박"
    
    guard n > 1 else {
        return "수"
    }
    
    for _ in 1...n/2 {
        result.append(pattern)
    }
    if n%2 != 0 {
        result.append("수")
    }
    
    return result
}
