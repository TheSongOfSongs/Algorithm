import Foundation

let n = Int(readLine()!)!
var stairs: [Int] = []
var dp: [Int] = Array(repeating: 0, count: n)

for _ in 0..<n {
    stairs.append(Int(readLine()!)!)
}

if n < 3 {
    print(stairs.reduce(0, +))
} else {
    dp[0] = stairs[0]
    dp[1] = stairs[1] + stairs[0]
    dp[2] = max(stairs[1] + stairs[2], dp[0] + stairs[2])

    for i in 3..<n {
        dp[i] = max(dp[i-3] + stairs[i-1] + stairs[i], dp[i-2] + stairs[i])
    }

    print(dp.last!)
}
