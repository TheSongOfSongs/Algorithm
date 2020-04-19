var sum = 0
var stop = false
var arr: [Int] = []

for _ in 0..<10 {
    let input = Int(readLine()!)!
    arr.append(input)
}

for i in 0..<10 {
    let newNum = sum + arr[i]
    if abs(sum-100) < abs(newNum-100) {
        break
    } else {
        sum = newNum
    }
}

print(sum)
