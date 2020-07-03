import Foundation

let n = Int(readLine()!)!
var arr: [Int] = [0]

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var dp: [Int] = Array(repeating: 0, count: arr.count)

if n <= 2 {
    print(arr.reduce(0, +))
} else {
    dp[1] = arr[1]
    dp[2] = arr[1] + arr[2]

    for i in 3...n {
        let compare1 = dp[i-3] + arr[i-1] + arr[i]
        let compare2 = dp[i-1]
        let compare3 = dp[i-2] + arr[i]

        dp[i] = max(compare1, compare2, compare3)
    }

    print(dp[n])

}
