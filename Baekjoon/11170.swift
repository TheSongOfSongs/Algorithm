var arr: [Int] = []
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    var temp = 0
    for n in input[0]...input[1] {
        temp += String(n).filter({$0 == "0"}).count
    }
    arr.append(temp)
}

for item in arr {
    print(item)
}
