import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    
    if n == 0 {
        return 0
    }
    
    for i in 1...n where n%i == 0{
        result += i
    }
    return result
}
