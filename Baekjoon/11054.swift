import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map({Int($0)!})
var dp: [Int] = Array(repeating: 1, count: n)
var dp2: [Int] = Array(repeating: 0, count: n)


for i in 0..<n {
    for j in 0..<i {
        if arr[i] > arr[j] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

for i in stride(from: n-1, through: 0, by: -1) {
    for j in stride(from: n-1, through: i, by: -1) {
        if arr[i] > arr[j] {
            dp2[i] = max(dp2[i], dp2[j]+1)
        }
    }
}

var result = Array(repeating: 0, count: n)
for i in 0..<n {
    result[i] = dp[i] + dp2[i]
}

print(result.max()!)
