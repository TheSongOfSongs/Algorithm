let n: Int = Int(readLine()!)!
var arr: [String] = []
for _ in 0..<n {
    var result = ""
    var input = readLine()!.split(separator: " ").map({Int($0)!})
    input.removeFirst()
    input.sort()
    result.append("Max \(input.last!), Min \(input.first!), Largest gap ")
    var gap = 0
    for i in 0..<input.count-1 {
        let temp = input[i+1] - input[i]
        if input[i+1] - input[i] > gap {
            gap = temp
        }
    }
    result.append("\(gap)")
    arr.append(result)
}

for i in 0..<n {
    print("Class \(i+1)")
    print(arr[i])
}
