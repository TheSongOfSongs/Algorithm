import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0
    
    for i in 1...number {
        let n = getN(i)
        result += n <= limit ? n : power
    }
    
    return result
}

func getN(_ number: Int) -> Int {
    guard number > 1 else {
        return 1
    }
    
    var result = 0
    
    for i in 1...Int(sqrt(Double(number))) {
        if number%i == 0 {
            result += 2
        }
    }
    
    let mid = sqrt(Double(number))
    if mid - Double(Int(mid)) == 0 {
        result -= 1
    }
    
    return result
}
