let n = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: [], count: 3)
var result: [Int] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 0..<3 {
        arr[j].append(input[j])
    }
}

var found = false
for i in 0..<3 {
    for j in 0..<n where arr[i][j] > 0 {
        let now = arr[i][j]
        for k in j+1..<n {
            if now == arr[i][k] {
                arr[i][k] = 0
                found = true
            }
        }
        if found {
            arr[i][j] = 0
            found = false
        }
    }
}

for i in 0..<n {
    print(arr[0][i] + arr[1][i] + arr[2][i])
}
