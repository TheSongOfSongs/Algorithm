import Foundation

extension Int {
    var isPrime:Bool {
        if self < 4 {
            return self != 1
        }
        
        for i in 2...Int(sqrt(Double(self))) {
            if self%i == 0 {
                return false
            }
        }
        
        return true
    }
}

func solution(_ n:Int, _ k:Int) -> Int {
    let arr = String(String(n, radix: k))
        .split(separator: "0")
        .map({ Int($0)! })
    
    var answer = 0
    
    for num in arr {
        if num.isPrime {
            answer += 1
        }
    }

    return answer
}
