import Foundation

let n = Int(readLine()!)!
var result = 0
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: n)
dp[0] = [0, 1, 1, 1, 1, 1, 1, 1, 1, 1]

for i in 1..<n {
    for j in 0..<10 {
        switch j {
        case 0:
            result = dp[i-1][j+1]
        case 9:
            result = dp[i-1][j-1]
        default:
            result = dp[i-1][j-1] + dp[i-1][j+1]
        }

        dp[i][j] = result%1000000000
    }
}

print(dp.last!.reduce(0, +)%1000000000)
