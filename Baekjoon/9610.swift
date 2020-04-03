let num: Int = Int(readLine()!)!
var result: [Int] = Array(repeating: 0, count: 5)
var axis: Int = 0

for _ in 0..<num {
    let arr = readLine()!.split(separator: " ").map({Int($0)!})
    if arr[0] > 0 && arr[1] > 0 {
        result[0] += 1
    } else if arr[0] < 0 && arr[1] > 0 {
        result[1] += 1
    } else if arr[0] < 0 && arr[1] < 0 {
        result[2] += 1
    } else if arr[0] > 0 && arr[1] < 0 {
        result[3] += 1
    } else {
        result[4] += 1
    }
}

for i in 0..<result.count-1 {
    print("Q\(i+1): \(result[i])")
}
print("AXIS: \(result[4])")
