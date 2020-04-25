let n = Int(readLine()!)!
let arr2 = readLine()!.split(separator: " ").map{ Int($0)! }
var arr1: [Int] = []

var sum = 0
for i in 0..<n {
    arr1.append(arr2[i]*(i+1) - sum)
    sum = sum+arr1.last!
}


var result = ""
for item in arr1 {
    result += "\(item) "
}
result.removeLast()
print(result)
