import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = []

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map({Int($0)!}))
}

for i in 1..<n {
    for j in 0..<arr[i].count {
        if j == 0 {
            arr[i][j] += arr[i-1].first!
        } else if j == arr[i].count-1 {
            arr[i][j] += arr[i-1].last!
        } else {
            arr[i][j] += max(arr[i-1][j-1], arr[i-1][j])
        }
    }
}

print(arr.last!.max()!)
