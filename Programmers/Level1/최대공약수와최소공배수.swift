import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var first = 1
    var second = 1
    
    var num1 = n
    var num2 = m

    var i = 2
    repeat {
        if num1%i == 0 && num2%i == 0 {
            first *= i
            second *= i
            num1 /= i
            num2 /= i
        } else if num1%i == 0 && num2%i != 0 {
            second *= i
            num1 /= i
        } else if num2%i == 0 && num1%i != 0 {
            second *= i
            num2 /= i
        } else {
            i += 1
        }
    } while i != (n < m ? m : n) + 1
    
    return [first, second]
}
