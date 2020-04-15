var arr: [Int] = []
let input = Int(readLine()!)!

for _ in 0..<input {
    let str = readLine()!.split(separator: " ").map({Int($0)!})
    arr.append(str[0]-1)
    for _ in 0..<str[1] {
        let _ = readLine()!
    }
}

for item in arr {
    print(item)
}
