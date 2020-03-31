let num = Int(readLine()!)!
var arr: [[Int]] = []

for _ in 1...num {
    let temp = readLine()!.split(separator: " ").map({Int($0)!})
    arr.append([temp[0],temp[1]])
}

for i in 0..<num {
    let n1 = arr[i][0]
    let n2 = arr[i][1]
    print("Case #\(i+1): \(n1) + \(n2) = \(n1 + n2)")
}
