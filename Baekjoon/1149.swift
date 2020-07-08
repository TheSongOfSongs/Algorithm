import Foundation

let n = Int(readLine()!)!
let maxCost = 1000000
var dp = Array(repeating: Array(repeating: 0, count: 3), count: n)

for i in 0..<n {
    let cost = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0..<3 {
        dp[i][j] = cost[j]
    }
}

for i in 1..<n {
    for j in 0..<3 {
        let minLast1 = dp[i-1][0..<j].min()
        let minLast2 = dp[i-1][j+1..<3].min()

        dp[i][j] += min(minLast1 ?? maxCost, minLast2 ?? maxCost)
    }
}

print(dp.last!.min()!)
