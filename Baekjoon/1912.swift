import Foundation

let n = Int(readLine()!)!
let arr: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
var dp: [Int] = Array(repeating: 0, count: n)
dp[0] = arr[0]

for i in 1..<n {
    dp[i] = max(dp[i-1] + arr[i], arr[i])
}

print(dp.max()!)
