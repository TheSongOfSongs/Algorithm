var answer: [Int] = []

for _ in 0..<Int(readLine()!)! {
    let arr = readLine()!.split(separator: ",").map({Int($0)!})
    answer.append(arr.reduce(0, +))
}

for item in answer {
    print(item)
}
