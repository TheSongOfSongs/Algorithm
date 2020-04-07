var arr: [Int] = []
for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}
let sum = arr.reduce(0, +)
var breakPoint = false
for i in 0..<9 {
    for j in i+1..<9 {
        if sum - arr[i] - arr[j] == 100 {
            arr.remove(at: j)
            arr.remove(at: i)
            breakPoint = true
            break
        }
    }
    if breakPoint == true {
        break
    }
}

arr.sort()
for item in arr {
    print(item)
}
