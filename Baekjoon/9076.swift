let n = Int(readLine()!)!
var arr: [String] = []

for _ in 0..<n {
    var input: [Int] = readLine()!.split(separator: " ").map({Int($0)!}).sorted()
    input.removeLast()
    input.removeFirst()
    let sub = input.last! - input.first!
    if sub >= 4 {
        arr.append("KIN")
    } else {
        arr.append(String(input.reduce(0, +)))
    }
}

for item in arr {
    print(item)
}
