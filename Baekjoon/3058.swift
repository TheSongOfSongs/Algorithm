let n = Int(readLine()!)!
var result: [String] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    var min = 101
    var sum = 0
    for item in input {
        if item%2 == 0 {
            sum += item
            if min > item {
                min = item
            }
        }
    }
    result.append("\(sum) \(min)")
}

for item in result {
    print(item)
}
