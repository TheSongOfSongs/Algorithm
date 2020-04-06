var arr: [[Int]] = []
var sum = 0
var result = ""
for i in 0..<8 {
    let n = Int(readLine()!)!
    arr.append([i, n])
}
arr = arr.sorted(by: {$0[0] < $1[0]}).sorted(by: {$0[1] > $1[1]})
arr.removeSubrange(5...7)
arr.sort(by: {$0[0] < $1[0]})
for i in 0...4 {
    result += "\(arr[i][0]+1) "
    sum += arr[i][1]
}
result.removeLast()
print(sum)
print(result)
