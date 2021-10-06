import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    
    for n in left...right {
        if sqrt(Double(n)) == floor(sqrt(Double(n))) {
            result -= n
        } else {
            result += n
        }
    }
    
    return result
}

