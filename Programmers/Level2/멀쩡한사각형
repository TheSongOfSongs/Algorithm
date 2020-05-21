import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    let gcd = getGCD(n1: w, n2: h)
    let passedSquare = ((w + h)/gcd - 1) * gcd
    let result = w * h - passedSquare

    return Int64(result)
}


func getGCD(n1: Int, n2: Int) -> Int {
    var a = max(n1, n2)
    var b = min(n1, n2)

    while true {
        let r = a%b

        if r == 0 {
            return b
        } else {
            a = b
            b = r
        }
    }
}
