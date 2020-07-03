import Foundation

let n = Int(readLine()!)!
var result: [String] = []

var fibo: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: 40+1)

for _ in 0..<n {
    let input = Int(readLine()!)!
    fibo[0][0] = 1
    fibo[1][1] = 1

    if input < 2 {
        result.append("\(fibo[input][0]) \(fibo[input][1])")
        continue
    }

    if fibo[input][0] == 0 {
        for i in 2...input {
            fibo[i][0] = fibo[i-1][0] + fibo[i-2][0]
            fibo[i][1] = fibo[i-1][1] + fibo[i-2][1]
        }
    }

    result.append("\(fibo[input][0]) \(fibo[input][1])")
}

for item in result {
    print(item)
}
