let input = readLine()!.split(separator: " ").map({Int($0)!})
let width = input[0]
let height = input[1]

var arr: [[Int]] = Array(repeating: Array(repeating: -1, count: height), count: width)

for i in 0..<width {
    let map = Array(readLine()!)
    var found = 0

    for j in 0..<height {
        if found > 0 {
            arr[i][j] = found
            found += 1
        }

        if map[j] == "c" {
            arr[i][j] = 0
            found = 1
        }
    }
}

for item in arr {
    print(item.map({String($0)}).joined(separator: " "))
}
