let num = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<num {
    let _ = readLine()!
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    let result = input.max()! - input.min()!
    arr.append(result*2)
}

for item in arr {
    print(item)
}
