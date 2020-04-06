var num = 0
var result = 0
for _ in 0..<10 {
    let inputs = readLine()!.split(separator: " ").map({Int($0)!})
    num -= inputs[0]
    num += inputs[1]
    if num > result {
        result = num
    }
}

print(result)
