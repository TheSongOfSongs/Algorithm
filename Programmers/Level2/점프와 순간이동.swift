import Foundation

func solution(_ n:Int) -> Int
{
    var ans:Int = 1
    var left = n

    while left > 1 {

        if left%2 == 0 {
            left /= 2
        } else {
            left -= 1
            ans += 1
        }
    }

    return ans
}
