import Foundation

func solution(_ n:Int) -> Int {
    var arr: [Int] = []
    var n = n
    
    while n > 0 {
        arr.append(n%3)
        n = n/3
    }
    
    arr.reverse()
    
    var result = 0
    for (i, num) in arr.enumerated() {
        result += Int(Double(num) * pow(3, Double(i)))
    }
    
    return result
}

