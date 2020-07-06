import Foundation

let n = Int(readLine()!)!
var memo = Array(repeating: 0, count: n+1)

if n > 2 {
    memo[1] = 1
    memo[2] = 2

    for i in 3...n {
        memo[i] = (memo[i-1] + memo[i-2])%10007
    }

    print(memo[n])

} else {
    print(n)
}
