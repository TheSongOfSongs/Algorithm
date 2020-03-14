import Foundation

func solution(_ x:Int) -> Bool {
    
    let num = String(x)
    var sum = 0
    var temp: Int
    
    for ch in num {
        temp = Int(String(ch))!
        sum += temp
    }
    
    return x%sum == 0 ? true : false
}
