var arr: [Int] = []
for _ in 0..<9 {
    arr.append(Int(readLine()!)!)
}
let sum = arr.reduce(0, +)
var shouldStop = false
for i in 0..<8 where shouldStop == false{
    for j in (i+1)..<9 {
        if sum - arr[i] - arr[j] == 100 {
            arr.remove(at: j)
            arr.remove(at: i)
            shouldStop = true
            break
        }
    }
}

for item in arr {
    print(item)
}
