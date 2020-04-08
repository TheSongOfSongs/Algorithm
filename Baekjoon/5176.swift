var arr: [Int] = []
for _ in 0..<Int(readLine()!)! {
    let input: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
    var set: Set<String> = []
    for _ in 0..<input[0] {
        set.insert(readLine()!)
    }
    arr.append(input[0] - set.count)
}

for item in arr {
    print(item)
}
