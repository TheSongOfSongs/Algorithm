import Foundation

let input = Int(readLine()!)!

var memo: [Int] = Array(repeating: 0, count: 12)
memo[1] = 1
memo[2] = 2
memo[3] = 4

var result: [Int] = []

for _ in 0..<input {

    let num = Int(readLine()!)!

    if num < 4 {
        result.append(memo[num])
    } else {
        for i in 4...num {
            if memo[i] == 0 {
                memo[i] = memo[i-1] + memo[i-2] + memo[i-3]
            }
        }
        result.append(memo[num])
    }
}

for item in result {
    print(item)
}
