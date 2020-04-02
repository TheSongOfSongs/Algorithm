var arr: [Int] = []
for _ in 0..<5 {
    let num = Int(readLine()!)!
    if num < 40 {
        arr.append(40)
    } else {
        arr.append(num)
    }
}
print(arr.reduce(0, +)/arr.count)
