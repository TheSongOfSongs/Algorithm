import Foundation

func solution(_ n:Int64) -> Int64 {
    let sqrtNum = sqrt(Double(n))
    if sqrtNum == round(sqrtNum) {
        return Int64((sqrtNum+1)*(sqrtNum+1))
    } else {
        return -1
    }
    return 0
}
