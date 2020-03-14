import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var result: Int = 0

    if a == b {
        return Int64(a)
    }
    else if a <= b {
        for i in a...b {
            result += i
        }
    }
    else {
         for i in b...a {
            result += i
        }
    }

    return Int64(result)
}
