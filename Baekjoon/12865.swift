import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})
let n = input[0]
let maxWeight = input[1]
var things: [[Int]] = [[0, 0]] // 무게, 가치
var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: maxWeight+1), count: n+1)

for _ in 0..<n {
    things.append(readLine()!.split(separator: " ").map({Int($0)!}))
}

for i in 1...n {
    for j in 1...maxWeight {
        if i == 0 && things[i][0] <= j {
            dp[i][j] = things[i][0]
            continue
        }

        if things[i][0] <= j {
            dp[i][j] = max(dp[i-1][j], things[i][1] + dp[i-1][j-things[i][0]])
        } else {
            dp[i][j] = dp[i-1][j]
        }
    }
}

print(dp.last!.last!)
