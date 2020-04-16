var arr: [String] = []
for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    switch input.reduce(0, +) {
    case 1:
        arr.append("C")
    case 2:
        arr.append("B")
    case 3:
        arr.append("A")
    case 4:
        arr.append("E")
    case 0:
        arr.append("D")
    default:
        continue
    }
}
for item in arr {
    print(item)
}
