let n = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map({Int($0)!}).sorted()
    arr.append(input[input.count-3])
}

for item in arr {
    print(item)
}
